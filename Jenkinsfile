library 'pipeline-library'
pipeline {
  agent none
  options { 
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage("Build and Push Image") {
      when { buildingTag() }
      environment {
        IMAGE_TAG = "${TAG_NAME}"
      }
      steps {
        containerBuildPushGeneric("agent") {
          checkout scm
        }
      }
    }
  }
}
