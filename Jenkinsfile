pipeline {
  agent { label 'new-workstation'}

  options {
    ansiColor('xterm')
  }
  
  stages {

   stage('Terraform Apply') {
      steps {
        sh 'make apply'
      }
    }
  }
}