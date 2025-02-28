pipeline {
    agent {
        docker {
            image 'python:3.8'
        }
    }
    environment {
        GITHUB_TOKEN = credentials('github-token')
    }
    stages {
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