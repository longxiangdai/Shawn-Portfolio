import sys
import numpy as np
from EKF import EKF


# Read in the control and measurement data from their respective text files
# and populates self.U and self.Z
def readData(filenameU, filenameZ, filenameXYT):
    """Read in motion, measurement, and ground-truth data.

    Attributes
    ----------
    filenameU : str
        Name of the txt file that contains the motion data
    filenameZ : str
        Name of the txt file that contains the measurement data
    filenameXYT : str
        Name of the txt file that contains the ground-truth pose

    Returns
    -------
    U : numpy.ndarray
        A 2 x T array of motion data, were each column specifies the
        linear and angular displacement at that point in time.
    Z : numpy.ndarray
        A 2 x T array of measurement data, were each column specifies the
        range and bearing from the origin to the robot at that point in time.
    XYT : numpy.ndarray
        A 3 x T array of motion data, were each column specifies the
        ground-truth position and orientation at that point in time.
    """
    U = np.loadtxt(filenameU, comments='#', delimiter=',')
    Z = np.loadtxt(filenameZ, comments='#', delimiter=',')
    XYT = np.loadtxt(filenameXYT, comments='#', delimiter=',')

    return (U.T, Z.T, XYT.T)


if __name__ == '__main__':

    # This function should be called with three arguments:
    #    sys.argv[1]: Comma-delimited file of control data (U.txt)
    #    sys.argv[2]: Comma-delimited file of measurement data (Z.txt)
    #    sys.argv[3]: Comma-delimited file of ground-truth poses (XYT.txt)
    if (len(sys.argv) != 4):
        print("usage: RunEKF.py ControlData.txt MeasurementData.txt \
              GroundTruthData.txt")
        sys.exit(0)

    R = np.zeros((2, 2))
    R[0, 0] = 0.25*1E-1
    R[1, 1] = (np.radians(4))*1E-1

    Q = np.array([[1.0, 0.0], [0.0, np.radians(1)]])*1E-1
    (U, Z, XYT) = readData(sys.argv[1], sys.argv[2], sys.argv[3])

    # Initialize the mean at the initial ground-truth pose
    # You can try playing with the initial mean, but if you set it to
    # something different from the ground-truth initial pose, make sure
    # that you update the initial covariance matrix accordingly.
    mu = XYT[:, 0]

    # Initialize the covariance to a zero matrix if we know the initial pose
    # Update this if you change the initial mean.
    Sigma = np.zeros((3, 3))

    ekf = EKF(mu, Sigma, R, Q, XYT)
    ekf.run(U, Z)
