pipeline {
    agent { node { label 'AGENT-1' } }

    stages {
        stage("Init") {
            steps {
                sh 'terraform init'
            }
        }
        stage("Plan") {
            steps {
                sh 'terraform plan'
            }
        }

    }

    post {
        always {
            echo "Always"
        }
        success {
            echo "Success"
        }
        failure {
            echo "Failure"
        }
    }
}