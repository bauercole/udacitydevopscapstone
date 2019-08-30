pipeline {
    agent { dockerfile true }
    stages {
      stage('Lint Dockerfile') {
        steps {
          sh 'hadolint Dockerfile'
        }
      }
      stage('Build Docker Image') {
        steps {
          script {
                    def customImage = docker.build("bauercole/udacitydevops:${env.BUILD_ID}")
                    customImage.push()
                }
        }
      }
    }
}
