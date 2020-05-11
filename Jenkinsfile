pipeline {
     agent any
    stages {
        stage('Docker-Build') {
            steps {
                sh 'docker build . -t JavaWebApp:${BUILD_ID}'
            }
        }
         stage('Push-Registry') {
            steps {
                sh 'docker tag  JavaWebApp:${BUILD_ID} <Registry>/JavaWebApp:${BUILD_ID}'
                sh 'docker push <Registry>/JavaWebApp:${BUILD_ID}'
            }
        }
    }     stage('Deploy2Kube') {
            steps {
                sh 'kubectl apply -f Deployment.yaml -n <YourNameSpace>'
            }
        }
}
