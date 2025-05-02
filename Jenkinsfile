pipeline {

    agent any
    environment {
        IMAGE_NAME = 'myapp-image'
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
