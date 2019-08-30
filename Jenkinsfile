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
           docker.withDOckerRegistry([ credentialsId: "dockerhub", url: "" ]) {
                    def customImage = docker.build("bauercole/udacitydevops:${env.BUILD_ID}")
                    customImage.push()
		}
        }
      }
    }
}
