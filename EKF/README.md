# Extended Kalman Filter
We are developing a new vacuum cleaning robot that will estimate its position and orientation in a room in order to be more efficient and precise at vacuuming. The robot's state $$x_t = [x_t, y_t, \theta_t]^T$$ consists of its position $(x_t, y_t)$ and orientation $\theta_t$. The robot is nonholonomic and its motion is described by the following nonlinear motion model:

$$x_t = x_{t-1} + (d_t + v_{d,t})cos(\theta_{t-1})$$
$$y_t = y_{t-1} + (d_t + v_{d,t})sin(\theta_{t-1})$$
$$\theta_t = \theta_{t-1} + \delta\theta_t+v_{\theta,t-1}$$

where the control data $u_t = [d_t, \delta\theta_t]^t$ consists of the body-relative forward distance that the robot moved $d_t$ and its change in orientation $\delta\theta_t$, both measured using wheel encoders. The term $v_t = [v_{d,t}, v_{\theta, t}]^t \sim N(0, Q)$ is additive zero-mean Gaussian noice and, without loss of generality, we assume that the sensor is at the origin, $(x, y) = (0, 0)$.

<br/><br/>

Owing to the unvertainty in the motion and measurements, we would like to deliver the robot with software that maintains the belief over its current pose abased upon an uncertain motion model and noisy observations from the ceiling-mounted sensor. The system is nonlinear and we would like to use an Extended Kalman Filter (EKF) to maintain the belief $bel(x_t)$ as a Gaussian distribution, which involves linearizing the process and measurement models about the current mean:

$$x_t = f(\mu_{t-1},\mu_t)+F(x_{t-1} - \mu_t) + Gv_t\quad v_t\sim N(0, R_t)$$
$$z_t = h(\mu_t)+H(x_t - \mu_t) + w_t\qquad w_t\sim N(0, Q_t)$$
where the Jacobians $F$ and $H$ are evaluated at mean state estimate:
$$F = \frac{\partial f}{\partial x}\bigg\rvert_{(x_{t-1}=\mu_{t-1}, u_t)}$$
