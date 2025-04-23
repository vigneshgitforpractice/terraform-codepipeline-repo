pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/vigneshgitforpractice/terraform-codepipeline-repo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Build stage goes here'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage goes here'
            }
        }
    }
}
