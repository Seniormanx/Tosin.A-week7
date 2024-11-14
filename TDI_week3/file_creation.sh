#!/bin/bash

mkdir -p dataset

read -p "Enter the name of the file with the extension. " filename

valid_extension=("txt" "csv" "json" "xlsx")

extension="${filename##*.}"

if
 	[[ "${valid_extension[*]}" == *"${extension}"* ]] ; then
	echo "Extension supported."	
	touch "dataset/$filename"
	echo "File '$filename' created in the 'dataset' folder."
else 
	echo "File not created. Invalid extension: .$extension "
fi
