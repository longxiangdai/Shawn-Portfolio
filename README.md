# Shawn_Portfolio

## [Robot Localization: Hidden Markov Models (HMM)]
- Developed a hidden Markov model to estimate the trajectory of a wheeled robot that moves over rooms
- Used the Baum-Welch algorithm to estimate the transition, observation, and prior probabilities from observations
- Implemented the Viterbi algorithm to identify the most likely sequence of robot locations based upon the corresponding of observations

<p align="center">
<img src="https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/HMM%20robot%20localization.PNG" width="400"/> <img src="https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/HMM%20robot%20localization%20Data%20Log%20Likelihood.png" width="400"/>
</p> 

## [Robot Localization: Extended Kalman Filter (EKF)]
- Developed a vacuum cleaning robot and estimate its position and orientation in a room in order to be more efficient and precise at vacuuming
- Implemented an EKF to estimate the robot's trajectory based upon the control (forward distance and change in orientation) and measurement data from a sensor placed on the floor of the room that the robot is vacuuming
- Visualized the robot's estimated (#red) and ground-truth (#green) trajectories

<p align="center">
<img src="https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/EKF%20robot%20localization.gif" width="350"/> <img src="https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/EKF%20robot%20localization%20error.PNG" width="400"/>
</p>

## [Robot Localization: EKF + Particle Filter]
- Improved the EKF and better estimate the pose of the vacuum cleaner by replacing the seneor placed on the ceiling with a LIDAR sensor that records the range and bearing as the robot navigates
- Implemented a standard particle filter that samples from the motion model, reweights the particles according to the observation likelihood, and resamples new particles according to their weights
- Tested the robot in three different environments (simple world, loops world, and rooms world) and showed that the model performs well without knowing the robot's initial pose

<p align="center">
<img src="https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/PF.gif" width="300"/>
</p> 

## [Robot Localization: EKF + Simultaneously Localization and Mapping (SLAM)]
- Implemented the SLAM algorithm that constructs and updates a map of an unknown environment while simultaneously keeping track of the robot's location within it
- Added landmarks to the map and used the sensor (a LIDAR with maximum range of 4 m and an angular field-of-view of 180 degrees) to update the trajectories of the robot and the locations of the landmarks
- Visualized the position of the robot and map estimates along with uncertainty ellipses

<p align = "center">
<img src = "https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/EKFSLAM.gif" width="400"/>
</p>
<p align = "center">
Fig.1 - EKF SLAM Small Noise
</p>
<p align = "center">
<img src = "https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Images/EKFSLAM2.gif" width="400"/>
</p>
<p align = "center">
Fig.1 - EKF SLAM Large Noise
</p>

## [Principal Component Analysis (PCA) via Matrix Decomposition](https://github.com/longxiangdai/Shawn-Portfolio/blob/main/PCA%20via%20Matrix%20Decomposition/Principal%20Component%20Analysis%20(PCA)%20via%20Matrix%20Decomposition.ipynb)
- Provided the mathematical background of Principal Component Analysis
- Showed how the principal components can be obtained via Singular Value Decomposition of the centered data matrix
- Gave an example and exhibited how the technique can be useful for dimensionality reduction and outlier detection

## [Deep Learning - Education Framework]
- Implemented the educational framework (EDF), a deep learning framework, using Python-NumPy
- Constructed the computation graph of a multi-layer perceptron (MLP) with one hidden layer
- Explored how the learning rate and number of layers affect the performance of the neural network


## Welcome to GitHub Pages

You can use the [editor on GitHub](https://github.com/longxiangdai/Shawn-Portfolio/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/longxiangdai/Shawn-Portfolio/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
