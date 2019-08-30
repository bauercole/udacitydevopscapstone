pipeline {
    agent any
    stages {
      stage('Lint Dockerfile') {
        steps {
          sh 'hadolint Dockerfile'
        }
      }
      stage('Build Docker Image') {
          steps {
              sh 'docker build --tag=bauercole/udacitydevops .'
	  }
      }
    }
}
