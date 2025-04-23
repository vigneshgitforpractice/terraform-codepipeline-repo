pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/vigneshgitforpractice/terraform-codepipeline-repo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the project...'
            }
        }
    }
}
