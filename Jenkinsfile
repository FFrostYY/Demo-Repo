pipeline {
	agent { dockerfile true }
	stages {
		stage('build') {
			steps {
				sh 'docker --version'
				sh 'docker run --publish 8000:8090 --detach --privileged --name stribog10/demo-docker'
			}
		}
	}
}
