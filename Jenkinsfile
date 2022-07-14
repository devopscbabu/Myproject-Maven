pipeline {
    agent any
    tools{
        maven 'M2_HOME'
    }
    
    stages{
        stage("Checkout the project") {
           steps{
               git branch: 'master', url: 'https://github.com/devopscbabu/Myproject-Maven.git'
           } 
        }
        stage("Build the package"){
            steps {
                sh 'mvn clean package'
            }
        }
		
        stage('Building the Image') {
        steps {
            script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }  
}
