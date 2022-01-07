pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo "hello loude did you get it now?"
            }
        }
        stage('GitCheckout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rafeeqd/terraform.git']]])
            }
        }
    }
}
