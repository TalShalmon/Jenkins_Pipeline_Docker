pipeline {
  agent { node { label 'slave01' } }
  
   environment {
        IMAGE_NAME = 'hello_world'
   }
  
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t ${IMAGE_NAME} . 
          echo "Image Name: ${IMAGE_NAME}" 
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run --rm hello_world
        """
      }
    }
  }
}
