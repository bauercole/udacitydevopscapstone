pipeline {
    agent any
    stages {
      stage('Lint Dockerfile') {
        steps {
          sh 'hadolint Dockerfile'
        }
      }
      stage('Build Docker Image') {
          docker build --tag=bauercole/udacitydevops:capstone .
      }
    }
}
