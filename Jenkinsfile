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
      stage('upload Docker Image') {
          steps {
	    withDockerRegistry([ credentialsId: "dockerhub", url: ""]){
              sh 'docker push bauercole/udacitydevops'
	    }
          }
      }
      stage('Run Kubernetes') {
          steps {
            sh 'kubectl run udacitycapstone --image=bauercole/udacitydevops --port 80'
          }
      }
    }
}
