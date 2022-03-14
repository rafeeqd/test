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
                extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: "tfcode"], [$class: 'LocalBranch']],
                submoduleCfg: [],
                userRemoteConfigs: [[url: 'https://github.com/rafeeqd/test.git']]
            ])
            }
        }
    }
}
