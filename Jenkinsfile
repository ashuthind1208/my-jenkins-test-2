pipeline {
    agent any
    stages {
      
        stage('Checkout') {
            steps {
                // Use this native step—it handles the "not in a git directory" issue automatically
                git url: 'https://github.com/ashuthind1208/my-jenkins-test.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Verify docker is accessible
                sh 'docker --version'
                // Build the image
                sh 'docker build -t my-web-app .'
            }
        }
        stage('Deploy Container') {
            steps {
                sh 'docker rm -f web-server || true'
                sh 'docker run -d -p 8090:80 --name web-server my-web-app'
            }
        }
    }
}