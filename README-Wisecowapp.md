# Wisecow Application - Containerisation, Kubernetes Deployment & CI/CD

## Project Overview
Wisecow is a sample application deployed in a local Kubernetes cluster. This project demonstrates:  
- Cloning the project from GitHub  
- Building a Docker image  
- Deploying the app in a local Kubernetes cluster  
- Setting up a CI/CD pipeline using GitHub Actions  

## Prerequisites
- Git  
- Docker Desktop with Kubernetes enabled  
- WSL2 (optional, for Linux commands)  
- kubectl CLI  
- GitHub account with repository access
-sudo apt install fortune-mod cowsay -y
---

## Step 1: Clone the Repository
git clone https://github.com/nyrahul/wisecow.git
cd wisecow
## Step 2: Write the docker Dockerfile for your application, which includes dependencies for your application to run and also copy application code in container. 
## Step 3:Build the docker image by using below command
Docker build -t wisecow 
## step 4: Now run the docker container by using below command
docker run -p 4499:4499 wisecow (wisecow app by default runs on port 4499)
## step 5: Now deploy the docker image in docker hub by using command
docker push udaykiran25/wisecow:latest (specify your username)
## step 6: Enable kubernetes in docker desktop
## step 7: Now write kubernetes deployment and service manifest files (yaml)
## step 9: Apply these manifests using the commands
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
## step 10: Now run the pod locally
## step 11: Upload all the files in github
## step 12: Now By using Guthub actions, write a ci/cd workflow which will automate both ci and cd right from building docker image and deploying in kubernetes for every change made in the repository.
