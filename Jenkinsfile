pipeline {
    agent any
    environment {
        GITHUB_TOKEN = credentials('github-pat')
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/HebePython/Fish_age.git', credentialsId: 'github-pat'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'python:3.8'
                    args '-u root:root' // Run as root user to avoid permission issues
                }
            }
            steps {
                sh 'echo "Building..."'
                sh 'python src\app\main.py' // runs main.py
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