pipeline {
    agent any
    tools { 
        maven 'Maven'  
    }
    stages {
        stage('SCM') {
            steps {
                echo 'Cloning git repo from git-hub'
                git credentialsId: '53da7189-bdb7-44db-9871-0b246566aa8e', url: 'https://github.com/polarapu/maven-project1.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Maven build using mvn clean install command'
                sh 'mvn clean install'
            }
        }
        stage('Deploy-stage') {
            steps {
                echo 'Deploying into tomcat app.'
                deploy adapters: [tomcat9(credentialsId: '6c1745bc-6d9b-4728-8fcc-70447d0f5ab6', path: '', url: 'http://192.168.32.128:8081/')], contextPath: 'devops113.war', war: '**/*.war'
            }
        }
    }
}
