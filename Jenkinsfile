pipeline {
  //agent none
  agent any  
  tools {
    maven 'mvn-3.5.4'
  }
  
  /*options {
    timeout(1000)
  }*/
  
  stages {
    stage('Maven Install') {  
		/* agent {
        docker {
          image 'maven:3.5.0'
        }
      } */
	  
	agent any	
      steps {
        sh 'mvn clean install -DskipTests'
      }
    } 
    
    
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t varshagopal/boot-jenkins-docker:latest .'
      }
    } 
   
       stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push varshagopal/boot-jenkins-docker:latest'
        }
      }

    }
    
     stage('Docker run') {
      agent any
      steps {
        sh 'docker run -p 8081:8080 varshagopal/boot-jenkins-docker'
      }
    } 
    
   
  }
}