#!/bin/bash

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT-$TIME_STAMP.log

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


dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installation of mysql"

dnf install git -y &>>$LOG_FILE
VALIDATE $? "Installation of GIT"

