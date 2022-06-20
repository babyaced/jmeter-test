pipeline{
    agent any
    stages{
        // stage('Test'){
        //     steps{
        //         sh 'python --version'
        //     }
        // }
        stage('Use bzt'){
            steps{
                sh 'pip install bzt'
                sh 'bzt --help'
                sh 'bzt blazedemo_script.jmx'
            }
        }
    }
}