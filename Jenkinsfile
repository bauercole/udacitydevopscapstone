pipeline {
    agent any
    stages {
      stage('Lint Dockerfile') {
        steps {
          sh 'hadolint Dockerfile'
        }
      }
      stage('Build Docker Image') {
          sh 'docker build --tag=bauercole/udacitydevops .'
      }
    }
}
