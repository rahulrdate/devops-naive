<div style="text-align: right"> <a href="../README.md"> devops-naive </a> </div>
# Jenkins
<img src="./images/jenkins.png" alt="Jenkins"
	title="A cute kitten" width="100" height="150" />

## Introduction
Jenkins is a self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.

## Getting Started
We will start with installation of Jenkins.

### Prerequisites
- Hardware requirements for a small team
  - 1GB+ RAM (min 256M)
  - 50GB+ Drive space (min 10GB)

- Software requirements
  - Java
  - Web Browser

Note: All the documentation here is with respect to Ubuntu OS. We have an ubuntu user as `devops`

The simplest way to run Jenkins is using war file.
  - Not to worry about configuration
  - You know where your Jenkins related files and directories are.

#### Download Jenkins war

`wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war`

#### Run `jenkins.war` using Java
- `java -jar jenkins.war` will run Jenkins with logs on your console.
- We can specify JENKINS_HOME, RAM, port of our choice using `export JENKINS_HOME=/home/devops/jenkins_home; nohup java -Xms256m -Xmx1024m -jar jenkins.war --httpPort=6040 &`

In above command

- We have set `JENKINS_HOME=/home/devops/jenkins_home`
Location where all your Jenkins files resides. By default it is `/home/devops/.jenkins`. If you want to migrate your Jenkins from one place to another you just have to migrate this directory.
- `nohup` will direct all your output to nohup.out
- `java` will run it as a java application
- `Xms, Xms` is min and max memory allocated to your Jenkins, this can be skipped
- `--httpPort=6040` will start Jenkins on port 6040, it is 8080 by default
- `&` will run Jenkins in a subshell

You can see logs using `tail -f nohup.out`

Go to your browser and visit http://localhost:6040

You will see Unlock Jenkins page.
Copy content from `$JENKINS_HOME/secrets/initialAdminPassword` and unlock Jenkins
