#!/bin/bash

username="Tosin" 
password="admin"

read -p "What is your username? " login
if [[ "${login}" == "${username}" ]]; then
 	read -p "What is your password? " pass
	echo #
	if [[ "${pass}" == "${password}" ]]; then
		read -p "what is your country? " country
		read -p "what is your city? " city 
		echo "$username, lives in $city, $country."
	else
		echo "You have no access this time"
	fi   
else
	echo "You have no access this time!"
fi


