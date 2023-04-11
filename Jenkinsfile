pipeline{
	agent any
	stages{
		stage('checkout'){
			steps{
				git branch: "main", url: 'https://github.com/sriramaleti9238/demo-project.git'
				}			
			}
			
			stage('Build'){
			steps{
				sh 'chmod a+x mvnw'
				sh './mvnw clean package -DskipTests=true'
				}
				
				post{
					always{
					archiveArtifacts 'target/*.jar'
					}
					
				}
				
			}
			stage(DockerBuild){
			steps{
				sh 'docker build -t sriramaleti9238/demo-interview:latest .'
				}
			}
		}


}