pipeline {
  agent any
  stages {
    stage('CleanUp de Workspace'){
       steps {
             cleanWs()
       }
     } 
    stage('Cloner le GitHub'){
      steps {
             git branch: 'main', url: 'https://github.com/srcmed/depotOnline26.git'
         }
     } 
  }
}