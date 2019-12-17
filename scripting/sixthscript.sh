#!/bin/bash

#a script that creates a GCP virtual machine with jenkins installed onto it.

echo "please enter instance name"
read instanceName 

gcloud compute instances create ${instance}
gcloud compute instances add-tags ${instance} --tags=port-8080
glcloud compute ssh ${instance} << 'EOF'

#this checks for updates if available
sudo apt update

#the installs openjdk-8-jdk
sudo apt install -y openjdk-8-jdk

#adds a key into the file 
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key |sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install -y jenkins

sudo chmod 777 /var/lib/jenkins/secrets/initialAdminPassword

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
until [ -f .jenkins/secrets/initialAdminPassword ]; do
	sleep 1
	echo "waiting for initial admin password"
done
until [[ -n "\$(cat  .jenkins/secrets/initialAdminPassword)" ]]; do
	sleep 1
	echo "waiting for initial admin password"
done
echo "initial admin password: \$(cat .jenkins/secrets/initialAdminPassword)"

#the above code will echo the password on the source you are running the command. 


sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa -y

sudo apt install python3.7 -y

sudo apt install python-pytest
EOF 


