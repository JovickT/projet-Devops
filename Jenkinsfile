pipeline {

    agent any
    environment {
        IMAGE_NAME = 'myapp-image'
        CONTAINER_NAME = 'myapp'
        REPO_URL = 'https://github.com/JovickT/projet-Devops.git'
    }

    stages {

        stage('Checkout') {

            steps {

                echo REPO_URL

                checkout scm

            }

        }

        stage ('Cloner le depôt GitHub'){
            steps {
                git url: "${REPO_URL}", branch: 'master'
            }
            
        }

         stage ('Nettoyer Docker'){
            steps {
                 script {
                    sh """
                        docker rm -f  ${CONTAINER_NAME}} || true
                        docker rmi -f  ${IMAGE_NAME}} || true
                    """
                }
            }
            
        }

         stage ('Déployer le conteneur'){
            steps {
                 script {
                    sh """
                        docker run -d --name ${CONTAINER_NAME} -p 8088:80 ${IMAGE_NAME}
                    """
                }
            }
            
        }

        stage ("Construire l'image Docker"){
            steps {
                script {
                    docker.build("${IMAGE_NAME}", ".")
                }
            }
            
        }
        

        stage('Lister les fichiers') {

            steps {

                sh 'ls -l'

            }

        }

    }

}
