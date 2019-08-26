pipeline {
    agent any
    stages {
      stage('Lint Dockerfile') {
        steps {
          sh 'hadolint Dockerfile'
        }
      }
      stage('Upload to AWS') {
        steps {
          withAWS(region:'us-west-2',credentials:'UdacityJenkins') {
            s3Upload(pathStyleAccessEnabled:true, payloadSigningEnabled: true, file:'index.html', bucket:'udacityjenkinspipeline')
          }
        }
      }
    }
}