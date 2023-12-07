node{
     
    stage('SCM Checkout'){
        git url: 'https://github.com/shivamt002/enhanced_container_security',branch: 'main'
    }

    stage('Image Build'){
         echo " ******************* "
         sh "chmod +x -R ${env.WORKSPACE}"     
         sh './build_img.sh'
    }

    stage('Image Scan'){
        sh './scan_img.sh'
    }
}
