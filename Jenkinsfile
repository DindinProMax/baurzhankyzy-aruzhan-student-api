pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                echo 'Executing tests...'
                sh 'exit 1' // Намеренно вызываем ошибку
            }
        }
    }
}
