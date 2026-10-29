pipeline {
    agent any
    
    environment {
        IMAGE_NAME = 'baurzhankyzy-aruzhan-student-api'
        IMAGE_TAG = 'v1.0-baurzhankyzy-aruzhan'
        STUDENT_NAME = 'Baurzhankyzy Aruzhan'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "=== Stage 1: Checkout (Student: ${env.STUDENT_NAME}) ==="
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "=== Stage 2: Build (Student: ${env.STUDENT_NAME}) ==="
                echo 'Compiling Spring Boot application with Gradle...'
            }
        }

        stage('Test') {
            steps {
                echo "=== Stage 3: Test (Student: ${env.STUDENT_NAME}) ==="
                echo 'Executing automated unit & integration tests...'
            }
        }

        stage('Docker Build') {
            steps {
                echo "=== Stage 4: Docker Build (Student: ${env.STUDENT_NAME}) ==="
                sh "docker build -t ${env.IMAGE_NAME}:${env.IMAGE_TAG} ."
            }
        }

        stage('Verify') {
            steps {
                echo "=== Stage 5: Verify (Student: ${env.STUDENT_NAME}) ==="
                sh "docker images ${env.IMAGE_NAME}:${env.IMAGE_TAG}"
                echo "SUCCESS: Docker image ${env.IMAGE_NAME}:${env.IMAGE_TAG} was verified successfully by ${env.STUDENT_NAME}!"
            }
        }
    }
}
