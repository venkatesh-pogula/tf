properties([parameters([choice(choices: ['apply', 'destroy'], description: 'This is used for only terraform-apply and destroy', name: 'action')])])
pipline{

    agent any

    stages{
        stage ('checkout'){
            steps{
                git checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/venkatesh-pogula/tf.git']]])
            }
        }
        stage ('terraform init'){
            steps{
                sh ('terraform init')
            }
        }
    }





}