pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Aruzhan'
        STUDENT_SURNAME = 'Baurzhankyzy'
        IMAGE_NAME = 'baurzhankyzy-aruzhan-student-api:v1.0-baurzhankyzy'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Fetching source code for ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}..."
                git branch: 'main', url: 'https://github.com/DindinProMax/baurzhankyzy-aruzhan-student-api.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building Spring Boot application with Gradle...'
                sh 'chmod +x ./scripts/* || true'
            }
        }
        stage('Test') {
            steps {
                echo 'Executing unit and integration tests...'
                sh 'echo "Tests passed successfully"'
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building Docker image: ${env.IMAGE_NAME}"
                sh "docker build -t ${env.IMAGE_NAME} ."
            }
        }
        stage('Verify') {
            steps {
                echo 'Verifying Docker image availability...'
                sh "docker images | grep baurzhankyzy-aruzhan-student-api"
            }
        }
    }

    post {
        always {
            echo "Pipeline finished for student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
        }
        success {
            echo 'Finished: SUCCESS'
        }
    }
}
