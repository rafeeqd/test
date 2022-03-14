import org.jenkinsci.plugins.workflow.steps.FlowInterruptedException
pipeline {
    
    agent any

    stages {
        stage('GitCheckout') {
            
            steps {
                checkout([
                $class: 'GitSCM',
                branches: [[name: 'main']],
                doGenerateSubmoduleConfigurations: false,
                extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: "tf_folder"], [$class: 'LocalBranch']],
                submoduleCfg: [],
                userRemoteConfigs: [[url: 'https://github.com/rafeeqd/test.git']]
            ])
               
            }
        }
        stage ('GetTFVersion') {
            steps {
                 tf_version = tf_version ?: readFile([file: "${tf_folder}/.terraform-version"]).trim()
                echo "tf_version"
            }
        }
    }
}
