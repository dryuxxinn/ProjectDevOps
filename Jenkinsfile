pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'update-setup-jenkins', url: 'https://github.com/dryuxxinn/ProjectDevOps.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t projectdevops:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Starting Docker container...'
                bat 'docker run -d -p 8080:80 --name projectdevops projectdevops:latest'
            }
        }
    }

    post {
        success {
            echo 'Pipeline sukses! 🚀'
        }
        failure {
            echo 'Pipeline gagal ❌'
        }
    }
}
