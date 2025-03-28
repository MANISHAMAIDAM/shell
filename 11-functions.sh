#!/bin/bash

USERID=$(id -u)

VALIDATE()
{
   if [ $1 -ne 0 ]
   then 
     echo  " $2 FAILED"
     exit 1
    else
      echo " $2 SUCCESS"
    fi 
}


if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi


dnf install mysql -y
VALIDATE $? "Installation of mysql"

dnf install git -y
VALIDATE $? "Installation of GIT"

