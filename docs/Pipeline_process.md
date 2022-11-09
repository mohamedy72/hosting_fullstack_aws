# Overview on the CircleCI - Github process

When a developer finish working on a feature then procced to push changes to remote repo (**main** branch), CircleCI then gets triggered by the changes made then it procceds to do the following:

1. Install NodeJS node

2. Install NPM

3. Checkout code

4. Install AWS CLI - latest

5. Configure AWS Access Key ID

6. Setting Up Elastic Beanstalk CLI

7. Install Back-End Dependencies

8. Back-End Build

9. Install Front-End Dependencies

10. Front-End Build

11. Deploy Backend

12. Deploy Frontend

To easily visualize this, i created the following diagram
![Diagram of the pipeline Process](/docs/screenshots/pipeline.jpg)
