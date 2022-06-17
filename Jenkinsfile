pipeline{
    agent{
        docker{ image 'python:latest'}
    }
    stages{
        stage('Test'){
            steps{
                sh 'python --version'
            }
        }
        stage('Install bzt'){
            steps{
                sh 'sudo pip install bzt'
            }
        }
    }
}