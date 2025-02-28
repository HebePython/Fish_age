pipeline {
    agent {
        docker {
            image 'python:3.8'
        }
    }
    environment {
        GITHUB_TOKEN = credentials('github-pat')
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/HebePython/Fish_age.git', credentialsId: 'github-pat'
            }
        }
        stage('Build') {
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