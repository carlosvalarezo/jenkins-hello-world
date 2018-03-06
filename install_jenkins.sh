#!/bin/bash
#This script assumes you already have Java 8 installed on your machine

# Create the user for jenkins

# create an applications group
dseditgroup -o create -n . -u username -p -r ‘Applications’ applications
# get the id for that group
sudo dscl . -read /Groups/applications
# find a unique identifier to give the user
sudo dscl . -list /Users UniqueID
# create the jenkins user
sudo dscl . -create /Users/jenkins
sudo dscl . -create /Users/jenkins PrimaryGroupID 505
sudo dscl . -create /Users/jenkins UniqueID 1026
sudo dscl . -create /Users/jenkins UserShell /bin/bash
sudo dscl . -create /Users/jenkins RealName "Jenkins"
sudo dscl . -create /Users/jenkins NFSHomeDirectory /Users/jenkins
sudo dscl . -passwd /Users/jenkins "Jenkins"
# create and set the owner of the home directory
sudo mkdir /Users/jenkins
sudo chown -R jenkins /Users/jenkins

# install jenkins
brew update && brew install jenkins
brew services stop jenkins

#install xcode
xcode-select --install

#install ruby
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s
rvm install 2.5.0
rvm --default use 2.5.0

#install fastlane
brew cask install fastlane

#start jenkins
sudo cat /Users/jenkins/.jenkins/secrets/initialAdminPassword 
jenkins

