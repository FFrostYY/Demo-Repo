pipeline {
	agent { dockerfile true }
	stages {
		stage('build') {
			steps {
				sh 'docker run --publish 8000:8090 --detach --name stribog10/demo-docker'
			}
		}
	}
}
