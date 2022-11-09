# Hosting Fullstack Application on AWS

This project is part of Udacity - Back-end nanodegree and it's the third project out of 3 technical projects. In this project, we were asked to deploy a pre-provided web application called _Udagram_ to AWS.

## Important links

Link to Front-end: http://mohamed-udagram.s3-website-us-east-1.amazonaws.com

Link to Back-end: http://udagram-api-env.eba-erzmjap3.us-east-1.elasticbeanstalk.com

## CircleCI status

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mohamedy72/hosting_fullstack_aws/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mohamedy72/hosting_fullstack_aws/tree/main)

## Run app locally

To be able to run the app locally;

#### 1. Backend:

- Create `.env` file at the root of `udagram-api` folder
- Add the following variables:
  - POSTGRES_HOST
  - POSTGRES_DB
  - POSTGRES_USERNAME
  - POSTGRES_PASSWORD
  - PORT
  - AWS_ACCESS_KEY_ID
  - AWS_SECRET_ACCESS_KEY
  - AWS_REGION
  - AWS_PROFILE
  - AWS_BUCKET
  - URL
  - JWT_SECRET
- Next run `npm i` to install required packages
- Then run `tsc` to compile typescript then `npm run start` to start the server

#### 2. Frontend:

All you need is to run `npm i --legacy-peer-deps` then `npm run start` to serve static files locally

# Deploy to AWS

#### Backend:

- Run `npm run build` to build final optimized version of the backend then `npm run deploy`

> In case it's the first time to deploy you will need to create an Elasticbeanstalk application & environment you can do so by running `eb init udagram-api --platform node.js --region us-east-1`. Then `eb create --sample udagram-api-dev`

- Make sure the health of eb app is **OK**

---

#### Frontend:

- To serve static files on AWS we use something called **S3 Bucket**
- Create one using this command `aws s3api create-bucket --bucket mohamed-udagram --region us-east-1`
- Then build the frontend using `npm run build`
- Finally run this command to upload **Archive.zip** to S3 bucket `aws s3 sync --acl public-read ./www s3://mohamed-udagram/`

___

> In case running into a **degraded** eb environment, run this command from terminal `eb deploy udagram-api-dev`
