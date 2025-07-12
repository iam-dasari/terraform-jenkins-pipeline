pipeline {
    agent { node { label 'AGENT-1' } }

    options {
        ansiColor('xterm')
    }

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
        stage("Approve") {
            steps {
                input "Deploy to Prod?"
            }
        }
        stage("Apply") {
            steps {
                sh 'terraform apply -auto-approve'
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