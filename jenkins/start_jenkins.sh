#!/bin/bash
export JENKINS_HOME=/home/$USER/jenkins_home
JENKINS_DIR="/home/$USER/tools/jenkins"
JENKINS_WAR_URL="http://mirrors.jenkins.io/war-stable/latest/jenkins.war"
JAVA_OPTS="-Xms256m -Xmx1024m"
JENKINS_PORT=6040

get_jenkins(){
  echo "${JENKINS_DIR}/jenkins.war"
  if [[ -f "${JENKINS_DIR}/jenkins.war" ]]; then
    echo "jenkins.war exists"
  else
    echo "Creating directory ${JENKINS_DIR}"
    mkdir -p ${JENKINS_DIR}
    echo "Downloading jenkins.war"
    wget -P ${JENKINS_DIR} ${JENKINS_WAR_URL}
  fi
}

start_jenkins(){
  echo "Starting Jenkins"
  echo "See logs at ${JENKINS_DIR}/jenkins.out"
  nohup java ${JAVA_OPTS} -jar ${JENKINS_DIR}/jenkins.war --httpPort=${JENKINS_PORT} > ${JENKINS_DIR}/jenkins.out 2>&1 &
  echo "Visit Jenkins at http://127.0.0.1:${JENKINS_PORT}"
}

get_jenkins
start_jenkins
