pipeline{
    agent none
    
    stages{
        
        stage('Git Checkout') {
            agent {
                label 'dockerNode'
            }
            steps {
                git "https://github.com/vaddurivineel/java-example.git"
            }
        }
        
        stage ('Deploy to Docker') {
            agent {
                label 'dockerNode'
            }
            steps {
                sh 'docker build -t app .'
                sh 'docker run -d -p 9090:8080 app'
            }
        }
    }
}
