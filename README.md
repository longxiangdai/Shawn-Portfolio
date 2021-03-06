# Shawn_Portfolio

## Project 1: Robotic Localization and Mapping
### [1.1 Extended Kalman Filter (EKF)](https://github.com/longxiangdai/Shawn-Portfolio/blob/main/EKF/EKF.ipynb)
- Developed a vacuum cleaning robot and estimate its position and orientation in a room in order to be more efficient and precise at vacuuming
- Implemented an EKF to estimate the robot's trajectory based upon the control (forward distance and change in orientation) and measurement data from a sensor placed on the floor of the room that the robot is vacuuming
- Visualized the estimated robot pose and the associated uncertainty in the form of a level-set ellipse (both in red), the ground-truth pose (in green), as well as the final errors along with the three-sigma error bars

<p align="center">
<img src="images/EKF%20robot%20localization.gif" width="400"/> <img src="images/EKF%20robot%20localization%20error.PNG" width="400"/>
</p>

### 1.2 EKF + Particle Filter
- Improved the EKF to better estimate the pose of the vacuum cleaner by replacing the seneor placed on the ceiling with a LIDAR sensor that records the range and bearing as the robot navigates
- Implemented a standard particle filter that samples from the motion model, reweights the particles according to the observation likelihood, and resamples new particles according to their weights
- Tested the robot in three different environments (simple world, loops world, and rooms world) and showed that the model performs well without knowing the robot's initial pose

<p align = "center">
<img src = "images/PF.gif" width="400"/>
</p>
<p align = "center">EKF Particle Filter</p>

### 1.3 EKF + Simultaneously Localization and Mapping (SLAM)
- Implemented the SLAM algorithm that constructs and updates a map of an unknown environment while simultaneously keeping track of the robot's location within it
- Added landmarks to the map and used the sensor (a LIDAR with maximum range of 4 m and an angular field-of-view of 180 degrees) to update the trajectories of the robot and the locations of the landmarks
- Visualized the position of the robot and map estimates along with uncertainty ellipses

<center class="half"> <img src="images/EKFSLAM.gif" width="400"/><img src="images/EKFSLAM2.gif" width="400"/></center>
<p align = "center">Left: EKF SLAM with small noise; Right: EKF SLAM with large noise</p>



## Project 2: Reinforcement Learning
### 2.1 Policy and Value Iteration for Gridworld
- Implemented the SARSA and Q-Learning with decayed epsilon-greedy policy to solve the grid world game
- Ensured that the agent performed properly and could reach the goal state when starting from different positions and in different scenaires (e.g. with diagonal moves when there is a crosswind upward through the middle of the grid)

<p align="center">
<img src="images/Optimal%20Policy.PNG" width="400"/> <img src="images/Optimal%20Path.PNG" width="400"/>
</p> 

### 2.2 DQN for CartPole and MountainCar
- Implemented a Deep-Q-Network (DQN) for the CartPole and for the MountainCar OpenAI Gym environments
- Optimized for the hyper-parameters to get higher scores and shorter training times
<p align="center">
<img src="images/CartPole.gif" width="400"/> <img src="images/MountainCar.gif" width="400"/>
</p> 

### 2.3 Policy Gradient for LunarLander
- Trained an agent to correctly land on the landing pad with Policy Gradient algorithm
- Showed that the agent started to learn how to fly after several hundred episodes and and land in the landing pad eventually

<p align="center">
<img src="images/LunarLander.gif" width="400"/> <img src="images/LunarLander%20Results.PNG" width="400"/>
</p> 

### 2.4 Applying Reinforcement Learning for Stock Trading
- Created a trading environment, based on OpenAI Gym framework, that simulates live stock markets with real market data and developed an agent using five deep reinforcement learning frameworks (A2C, DDPG, PPO, TD3, and SAC) via FinRL that automatically trades stocks
- The training process involves observing stock price change, taking an action and reward's calculation to have the agent adjusting its strategy accordingly
- By interacting with the environment, the trading agent derives a trading strategy with the maximized rewards as time proceeds

## Project 3: Deep Learning
### 3.1 Education Framework
- Implemented the educational framework (EDF), a deep learning framework, using Python-NumPy
- Constructed the computation graph of a multi-layer perceptron (MLP) with one hidden layer
- Explored how the learning rate and number of layers affect the performance of the neural network

### [3.2 Image Style Transferring Using Deep Learning](https://github.com/longxiangdai/Shawn-Portfolio/blob/main/Style%20Transfer/Style%20Transfer%20Project.pdf)
- Trained real-time style transform networks on cloud GPUs using Microsoft 2014 COCO dataset (more than 80k images) that modified the style of an image while preserving its content
- Combined with Mask-RCNN to detect and keep the main object while performing the style transformation
- Improved the quality of the generated image by making several modifications on the original network such as VGG for down-sampling, blending loss, etc.


<p align = "center">
<img src = "images/Workflow.png"/>
</p>
<p align = "center">An example of application workflow</p>

<p align = "center">
<img src = "images/StyleTransferrediImages.png"/>
</p>
<p align = "center">Examples of style-transferred images by different models</p>


## Project 4: Machine Learning
### 4.1 Applying Tree Based Algorithms for Stock Trading
- Used the tree based algorithms (decision tree, bagging tree, random forest, gradient boosting, etc.) to construct algorithmic trading strategies that outperforms the benchmark
- Developed a feature importance technique that dynamically selects an optimal set of features every quarter to optimize the profit of the strategy
- Applied the optuna to automatically optimize the hyperparameters of the model to achieve better performance 

### [4.2 Using Machine Learning Techniques to Integrate Technical and Fundamental Analysis to Identify Trading Opportunities](https://github.com/zhangyongheng78/Using-ML-to-Integrate-Technical-and-Fundamental-Analysis-to-Identify-Trading-Opportunities)
- Generated quarterly and daily fundamental, technical, and macroeconomic features from SimFin and FRED
- Built two types of predictive models that conduct fundamental analysis to make long-term predictions and perform technical analysis to make short-term predictions respectively
- Applied clustering methods to identify stocks that have common financial conditions and
trends, and then made predictions on the basis of each cluster
- Collected tweets and performed sentiment analysis to generate a sentiment indicator for each
stock in the S&P 500 index, and explored how it foretells the ups and downs of stocks

<p align = "center">
<img src = "images/ML Trading1.PNG"/>
</p>
<p align = "center">Portfolio Cumulative Return (Week over Week Prediction)</p>

<p align = "center">
<img src = "images/ML Trading2.PNG"/>
</p>
<p align = "center">Portfolio Cumulative Return (Quarter over Quarter Prediction)</p>

## Project 5: Data Analytics
### 5.1 Principal Component Analysis (PCA) via Matrix Decomposition
- Analyzed the demographic features of different countries and showed that the Principal Component Analysis can be useful for dimensionality reduction and outlier detection
- Provided the mathematical background of Principal Component Analysis and proved that it can be obtained via Singular Value Decomposition of the centered data matrix
