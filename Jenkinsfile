pipline{

    agent any

    stages{
        stage ('checkout'){
            steps{
                git ""
            }
        }
        stage ('terraform init'){
            steps{
                sh ('terraform init')
            }
        }
    }





}