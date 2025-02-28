pipeline {
    agent any
    environment {
        GITHUB_TOKEN = credentials('github-pat')
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/your-username/Fish_age.git', credentialsId: 'github-pat'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'python:3.8'
                }
            }
            steps {
                sh 'echo "Building..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
            }
        }
    }
}