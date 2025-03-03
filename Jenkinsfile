pipeline {
    agent any
    environment {
        GITHUB_TOKEN = credentials('github-pat')
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'Dev_branch', url: 'https://github.com/HebePython/Fish_age.git', credentialsId: 'github-pat'
            }
        }
        stage('Build') {
            agent {
                docker {
                    image 'python:3.11-slim'
                    args '-u root:root' // Run as root user to avoid permission issues
                }
            }
            steps {
                sh 'echo "Building..."'
                sh 'python3 src/app/main.py' // runs main.py
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'python:3.11-slim'
                    args '-u root:root' // Run as root user to avoid permission issues
                }
            }
            steps {
                sh 'echo "Testing..."'
                sh 'apt-get update && apt-get install -y curl' // Install curl
                sh 'curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py' // Download get-pip.py
                sh 'python3 get-pip.py' // Install pip
                sh 'python3 -m venv venv' // Create a virtual environment
                sh '. venv/bin/activate && pip install --no-cache-dir pytest' // Install pytest in the virtual environment
                sh '. venv/bin/activate && python3 -m pytest --version' // Verify pytest installation
                sh '. venv/bin/activate && python3 -m pytest tests/' // run pytest
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
            }
        }
    }
}