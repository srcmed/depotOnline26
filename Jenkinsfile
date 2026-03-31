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
             sh 'git clone https://github.com/srcmed/depotOnline26.git' 
         }
     } 
  }
}