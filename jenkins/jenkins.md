#### [devops-novice](../README.md)

---

# Jenkins
<img src="./images/jenkins.png" alt="Jenkins"
	title="Jenkins" width="100" height="150" />

---

## Introduction
Jenkins is a self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.

---

## Getting Started
We will start with installation of Jenkins.

---

### Prerequisites
- Hardware requirements for a small team

	- 1GB+ RAM (min 256M)

	- 50GB+ Drive space (min 10GB)


- Software requirements

	- Java

	- Web Browser

---

#### Download Jenkins war

The simplest way to run Jenkins is using war file.

- Download stable Jenkins war

> `wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war`

---

#### Run `jenkins.war` using Java
- Run Jenkins with logs on your console.

> `java -jar jenkins.war`

- We can specify `JENKINS_HOME, RAM, PORT_NUMBER` of our choice using

> `export JENKINS_HOME=/home/$USER/jenkins_home; nohup java -Xms256m -Xmx1024m -jar jenkins.war --httpPort=6040 &`

In above command

- We have set `JENKINS_HOME`
location where all Jenkins files resides, it is `/home/$USER/.jenkins` by default.

- `nohup` will direct all your output to nohup.out

- `java` will run it as a java application

- `Xms, Xms` is min and max memory allocated for your Jenkins, this can be skipped

- `--httpPort=6040` will start Jenkins on port 6040, it is 8080 by default

- `&` will run Jenkins in a subshell

You can see logs using `tail -f nohup.out`

---

### Your Jenkins is up
Go to your browser and visit [`http://localhost:6040`](http://localhost:6040)

- You will see Unlock Jenkins page.

- Copy secret key from
`$JENKINS_HOME/secrets/initialAdminPassword` and unlock Jenkins.

- Install suggested plugins.

- Create First Admin User

- Jenkins is Ready.

---

_[Jenkins](https://jenkins.io/)_

#### [devops-novice](../README.md)
