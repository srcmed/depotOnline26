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
    stage('install Docker'){
      steps {
            sh 'sudo apt autoremove docker.io docker-compose -y'
            sh 'sudo apt update' 
            sh 'sudo apt install apt-transport-https  ca-certificates  curl   software-properties-common   -y' 
            sh 'sudo apt install docker.io -y'
            sh 'sudo apt update'
            sh 'sudo  chmod  666 /var/run/docker.sock'
            sh 'sudo usermod -aG  docker $USER'
            // sh 'sudo systemctl stop docker.service'
            // sh 'sudo systemctl start docker.service'
         }
     }  
      stage('build image docker') {
                         steps {
                             script {
              sh 'sudo docker image rm "mynginx:latest"'               
              sh 'sudo docker build -t "mynginx" .'
              sh 'sudo docker image ls'
                        }
              }
      }
  }
}
