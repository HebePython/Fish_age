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
            steps {
                script {
                    docker.image('python:3.8').inside('-u root:root') {
                        sh 'echo "Building..."'
                    }
                }
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