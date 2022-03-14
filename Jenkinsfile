import org.jenkinsci.plugins.workflow.steps.FlowInterruptedException
pipeline {
    
    agent any

    stages {
        stage('Hello') {
            
            steps {
                echo "hello loude did you get it now?"
                checkout([
                $class: 'GitSCM',
                branches: [[name: 'main']],
                doGenerateSubmoduleConfigurations: false,
                extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: "tf_folder"], [$class: 'LocalBranch']],
                submoduleCfg: [],
                userRemoteConfigs: [[url: 'https://github.com/rafeeqd/test.git']]
            ])
                tf_version = tf_version ?: readFile([file: "${tf_folder}/.terraform-version"]).trim()
                echo "tf_version"
            }
        }
    }
}
