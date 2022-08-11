properties([parameters([choice(choices: ['apply', 'destroy'], description: 'This is used for only terraform-apply and destroy', name: 'action')])])
pipeline{
    agent any
    stages{
        stage ('checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/venkatesh-pogula/tf.git']]])
            }
        }
        stage ('terraform init'){
            steps{
                sh ('terraform init')
            }
        }
        stage ('terraform plan'){
            steps{
                sh ('terraform plan')
            }
        }
        stage ('terraform action'){
            steps{
                sh ('terraform ${action} --auto-approve')
            }
        }

    }





}