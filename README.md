Execute the file install_jenkins.sh

If the script executes successfully, the command line is waiting for entering the password "Jenkins" (without quotes) in order to display the admin password for the first launch of Jenkins 
Later, access to Jenkins -> New Item -> GitRepo (Freesctyle project) -> Configure -> Source code management -> Git -> Repository URL (write the repository URL) -> In Build -> Esecute shell -> cd ios/fastlane fastlane ios custom_lane

Then, go to the project and execute the script first_run_fastlane.sh 
