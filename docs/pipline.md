### Pipeline Process

#### Overview
This app is integrated with CircleCI via Github. Any changes to the master branch will initiate a series of steps in CircleCI to deploy code. 
Here is the order of steps:
+ Read environment secrets configured in CircleCI
+ Install NodeJS
+ Install NPM
+ Checkout code from Github repo
+ Setup AWS CLI
+ Setup AWS Access Key ID
+ Setup Elastic Beanstalk CLI
+ Install backend dependencies
+ Build backend
+ Install frontend dependencies
+ Build frontend
+ Deploy backend
+ Deploy frontend

#### Diagram
 [](pipline.md)