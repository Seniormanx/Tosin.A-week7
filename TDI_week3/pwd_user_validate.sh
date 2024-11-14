#!/bin/bash 

admin="Tosin"
password="admin"

read -p "What is your username? " username
if  [[ "${username}" == "${admin}" ]] ; then 
	read -p "enter your password? " entered_password
	if [[ "${entered_password}" == "${password}" ]] ; then 
		echo "user access granted"
	else 
		echo "incorrect username or password"
	fi
else
	echo "Incorrect username or password"
fi
