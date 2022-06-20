pipeline{
    docker {
      label 'pipes-docker-agent'
      registryUrl 'https://docker-repo.artifactory.azwus2.gaptech.com/'
      image 'docker-repo.artifactory.azwus2.gaptech.com/pipes-docker-agent-allocation-taurus:1.0.0'
    }
    stages{
        // stage('Test'){
        //     steps{
        //         sh 'python --version'
        //     }
        // }
        stage('Use bzt'){
            steps{
                sh "bzt --help"
                sh 'bzt blazedemo_script.jmx'
            }
        }
    }
}