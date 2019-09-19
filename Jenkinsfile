node{
   stage('SCM Checkout'){
     git 'https://github.com/moolegovardhan/my-app'
      sh "hi "
   }
   stage('Compile-Package'){
      // Get maven home path
      def mvnHome =  tool name: 'maven', type: 'maven' 
      def mvnCMD = "${mvnHome}/bin/mvn"
      sh "${mvnCMD} clean package"
   }
   stage('Build Docker Iamge'){
     sh 'docker build -t moolegovardhan/myapp:2.0.0 .'
   }
   stage('push Docker Iamge'){
      withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerHubPwd')]) {
         sh "docker login -u moolegovardhan -p ${dockerHubPwd}"
      }
      sh 'docker push moolegovardhan/myapp:2.0.0'
   }
   
}
