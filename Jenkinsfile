pipeline {

    agent any

    stages {

        stage('Checkout') {

            steps {

                echo 'Récupération du dépôt Git...'

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
