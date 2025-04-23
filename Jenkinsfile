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

        stage('Terraform Init & Plan') {
            steps {
                sh '''
                    # Clean the .terraform directory to ensure fresh initialization
                    rm -rf .terraform
                    
                    # Initialize Terraform with reconfigure option
                    terraform init -reconfigure
                    
                    # Run terraform plan and output to tfplan
                    terraform plan -out=tfplan
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                    # Apply the plan generated in the previous step
                    terraform apply -auto-approve tfplan
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage goes here'
            }
        }
    }
}
