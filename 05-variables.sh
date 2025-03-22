#!/bin/bash

tools=("git" "jenkins" "docker" "kubernetes" "terraform" "ansible" "graphana")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo " SCM tool: ${tools[0]}"
echo " CI/CD tool : ${tools[1]}"
echo " top tools of Devops is : ${tools[@]}"