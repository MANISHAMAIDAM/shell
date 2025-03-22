#!/bin/bash

devops-tool=("git" "jenkins" "docker" "kubernetes" "terraform" "ansible" "graphana")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo " SCM tool: ${MOVIES[0]}"
echo " CI/CD tool : ${MOVIES[1]}"
echo "Few of the top tools of Devops is : ${MOVIES[@]}"