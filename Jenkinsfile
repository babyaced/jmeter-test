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
                sh 'virtualenv jmeter-test && jmeter-test/bin/activate'
                sh 'pip install -r bzt'
            }
        }
    }
}