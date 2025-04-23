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
                echo 'Building project...'
                // Add build steps here
            }
        }
        stage('Deploy') 
            steps {
                echo 'Deploying project...'
                // Add deploy steps here
            }
        }
    }
}
