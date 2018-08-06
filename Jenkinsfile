pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    } 
    
    
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t varshagopal/boot-jenkins-docker:latest .'
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