pipeline {

    agent any
    environnement {
        IMAGE_NAME = 'myapp-image'
        REPO_URL = ''
    }

    stages {

        stage('Checkout') {

            steps {

                echo 'https://github.com/JovickT/projet-Devops.git'

                checkout scm

            }

        }

        stage('Lister les fichiers') {

            steps {

                sh 'ls -l'

            }

        }

    }

}
