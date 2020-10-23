pipeline {
	agent { dockerfile true }
	stages {
		stage('build') {
			steps {
				sh 'docker --version'
				    withCredentials([usernamePassword( credentialsId: 'docker-hub-credentials', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
        def registry_url = "registry.hub.docker.com/"
        sh "docker login -u $USER -p $PASSWORD ${registry_url}"
        docker.withRegistry("http://${registry_url}", "docker-hub-credentials") {
						sh 'docker run --publish 8000:8090 --detach --privileged --name stribog10/demo-docker'
				        }
				}
			}
		}
	}
}
