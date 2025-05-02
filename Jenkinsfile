pipeline{
  agent any
  environment{
    IMG_NAME = 'myapp-image'
    DOCKER_REPO = 'myapp'
  }
  
  stages{
    stage('clean up'){
      steps{
        deleteDir()
      }
    }

    stage('Checkout SCM'){
      steps{
        git (
          branch: 'master',
          url: 'https://github.com/JovickT/projet-Devops.git'
        )
      }
    }
    stage('Build'){
      steps{
        script {
          sh "docker build -t ${IMG_NAME} ."
          sh "docker tag ${IMG_NAME} ${DOCKER_REPO}:${IMG_NAME}"
        }
      }
    }

    stage('deploiement conteneur'){
      steps{
        script {
          sh "docker stop monapp || true"
          sh "docker rm monapp || true"
          sh "docker run -d --name monapp --hostname monapp -p 8599:80 ${IMG_NAME}"
          sh 'docker exec monapp "ifconfig"'
        }
      }
    }

  }
}