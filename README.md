# vlc-real-estate-web-app

Goal of this project is to visualize current key indicators about the valencian real estate market.


### Table of Contents
- [vlc-real-estate-web-app](#vlc-real-estate-web-app)
    - [Table of Contents](#table-of-contents)
  - [Project Motivation](#project-motivation)
  - [Project Architecture](#project-architecture)
    - [Steps to be done:](#steps-to-be-done)
  - [Run Project ](#run-project-)
    - [Run Flask App Locally With Python Env](#run-flask-app-locally-with-python-env)
    - [Run Flask App Locally With Docker Image](#run-flask-app-locally-with-docker-image)
    - [Run Flask App On AWS Cluster](#run-flask-app-on-aws-cluster)
  - [Results](#results)
  - [Licensing, Authors, Acknowledgements](#licensing-authors-acknowledgements)

## Project Motivation<a name="motivation"></a>

Motivation of this project was to find out how the real estate market of Valencia is behaving. Especially the following questions should be answered with data:

- What are the average prices in the different districts/neighborhoods of Valencia?
- What area in Valencia has the best raito rent/sale price from a home owners view?
- What are the renting prices in the different districts/neighborhoods of Valencia?
- Are sale prices for flats in the city centre of Valencia rising or falling over time?
- How long are sale listings publicated before the flat is bought?
  
In Spain one of the most popular websites to offer and search real estate is Idealista. Idealista offers an API to download current listings. This projects consists of periodically retrieving this data, creating a Web App which visualizes key indicators based on the data and deploying this Flask app as docker container to an AWS EKS cluster.

## Project Architecture<a name="architecture"></a>

A lambda function which is triggered once a week retrieves sale and rent prices from the idealista API and stores them in a S3 bucket [github-link](https://github.com/LeopoldWalther/valencia-real-estate-price-analysis).

This project creates a Flask web app using the idealista real estate data. A CircleCI Continuous Integration pipeline tests the app and builds a Docker image from it. Furthermore it creates the infrastructure necessary to host the web app.
The following image shows the architecture of the aws infrastructure deployed via AWS CloudFormation.

[<img alt="alt_text" width="40px" src="images/image.PNG" />](https://lucid.app/documents/view/9275a822-f1fb-41a3-920b-2e30894cadf1)



### Steps to be done:
* Add Load balancer 
* Move cluster into private subnets
* Add circle ci badge
* Add more visuals to flask web app
* Add [lambda function as IAC](https://learn.udacity.com/nanodegrees/nd9991/parts/cd0650/lessons/ls11589/concepts/9d600341-9343-4c00-ab95-bcea69059812)
* Automatically update data in flask app with S3
* Add [Smoke Test](https://learn.udacity.com/nanodegrees/nd9991/parts/cd0649/lessons/fde8c9b6-6f0e-4943-961c-91ae0ba432b5/concepts/c818a36c-1110-4c1a-93c7-b84c8daf1f88)
* Add [prometheus monitoring](https://learn.udacity.com/nanodegrees/nd9991/parts/cd0649/lessons/8055dc75-2edb-44e6-8f74-76fb86d17a9b/concepts/379682d3-2621-4f1e-be3a-c3c7023b684f)
  * Add [alerts](https://learn.udacity.com/nanodegrees/nd9991/parts/cd0650/lessons/ls11592/concepts/458c67b2-19ca-4978-b62e-2d0cd070d6b1)
  * load testing

## Run Project <a name="installation"></a>

The Dockerfile uses Python 3.9. 

### Run Flask App Locally With Python Env
* Prerequesits:
  * Python 3.9 locally installed.
* `cd` into the project folder 'valencia-real-estate-web-app'.
* Trigger python virtual environment creation using the `make setup` command from the Makefile.
* Make sure the virtual env is installed and activated.
  * If not already activated, run `source ~/.env_vlcweb/bin/activate`
* Install all necessary libraries in the activated virtual environment with `make install`.
* Optional: test the code with `make lint`
* Start the flask app with `python app.py`
* See the app running on your browser at http://127.0.0.1:80

### Run Flask App Locally With Docker Image
* Prerequesits:
  * Docker locally [installed](https://learn.udacity.com/nanodegrees/nd9991/parts/cd0650/lessons/ls11590/concepts/508d0c2d-ac5e-4efc-b42c-07d0dda7eaaf)
* There are two options to build and run the docker image
  * Either you just run `././run_docker.sh`
  * Or you run the docker commands yourself:
    * Build docker image `docker build --tag=valencia-real-estate-report .`
    * The image should apper in the list of your local docker images `docker image ls`
    * Run flask app `docker run -p 8000:80 valencia-real-estate-report`
* See the app running on your browser at http://127.0.0.1:8000

### Run Flask App On AWS Cluster
* Prerequesits:
  * aws_access_key_id & aws_secret_access_key for a user with programmatic access to AWS
  * a rsa key pair on aws 'named vlc-real-estate-app'


## Results<a name="results"></a>



## Licensing, Authors, Acknowledgements<a name="licensing"></a>

Feel free to use my code as you please:

Copyright 2023 Leopold Walther

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
