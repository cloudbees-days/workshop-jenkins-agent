pipeline {
  agent {
    kubernetes {
      yamlFile "pod-template.yml"
    }
  }
  options { 
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage("Build and Push Image") {
      when { buildingTag() }
      steps {

      }
    }
  }
}
