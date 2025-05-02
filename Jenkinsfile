pipeline {

    agent any

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
