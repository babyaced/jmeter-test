pipeline{
    agent{
        dockerfile true
    }
    stages{
        // stage('Test'){
        //     steps{
        //         sh 'python --version'
        //     }
        // }
        stage('Use bzt'){
            steps{
                sh 'bzt blazedemo_script.jmx'
            }
        }
    }
}