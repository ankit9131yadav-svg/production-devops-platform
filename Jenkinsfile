pipeline {

    agent any

    environment {
        IMAGE_NAME = "ankit9131/production-app"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                    docker build -t $IMAGE_NAME:latest .
                '''
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                        echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    '''
                }
            }
        }

        stage('Push Image') {
            steps {
                sh '''
                    docker push $IMAGE_NAME:latest
                '''
            }
        }

        stage('GitOps Deployment') {
            steps {
                echo 'Docker image pushed successfully.'
                echo 'ArgoCD is responsible for Kubernetes deployment.'
                echo 'Kubernetes manifests are managed through GitOps.'
            }
        }
    }

    post {

        success {
            echo 'CI Pipeline Successful - ArgoCD will handle deployment.'
        }

        failure {
            echo 'CI Pipeline Failed.'
        }

        always {
            echo 'Jenkins CI pipeline completed.'
        }
    }
}
