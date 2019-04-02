#!/bin/bash

input=$1

if ! [ -z $1 ]; then
	case $input in
		"-h")
			echo "USAGE $0 and optional"
			echo "-h to print help"
			echo "-f to cat license in a license.txt file"
		;;
		"-f")
			sudo cat /sys/firmware/acpi/tables/MSDM | grep -aoP '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}' > productKey.txt
		;;
		*) echo "Please select a valid flag: use -h to view help"
	esac
else
	sudo cat /sys/firmware/acpi/tables/MSDM | grep -aoP '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}' 
fi


		
