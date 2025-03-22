#!/bin/bash

user=$(id -u) ## to exec a command inside shellscript use $
if [[ $user -ne 0 ]]
then
 echo  "please run the script with root user permissions" 
 exit 1
fi


 #Note shellscript will proceed further even  it trigger an error to avoid that we have use exit status
 #exit status 0 is success
 #exit status other than zero is failure 

read -p "enter the package you want to install:" PACKAGE 
dnf install $PACKAGE

if (( $? == 0 ))
then 
   echo "installation of $PACKAGE is successful"
else 
   echo " installation of $PACKAGE is failed ,please fix the error "
fi
   
