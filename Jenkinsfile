pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo "Pulling code from repository..."
                checkout scm
            }
        }

        stage('Install Backend Dependencies') {
            steps {
                echo "Installing backend dependencies..."
                bat """
                    node -v
                    npm -v
                    npm cache clean --force
                    npm install --force
                """
            }
        }

        stage('Run Server') {
            steps {
                echo "Starting the server..."
                bat 'start /B npm start'
            }
        }
    }

    post {
        success {
            echo 'Build Passed ✅'
        }

        failure {
            echo 'Build Failed ❌'
        }
    }
}