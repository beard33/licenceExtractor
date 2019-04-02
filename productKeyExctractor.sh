#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

input=$1
cat /sys/firmware/acpi/tables/MSDM > tmp.txt
key=`grep -aoP '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}' ./tmp.txt`
rm ./tmp.txt


if ! [ -z $1 ]; then
	case $input in
		"-h")
			echo "USAGE $0 and optional"
			echo "-h to print help"
			echo "-f to cat license in a license.txt file"
		;;
		"-f")
			echo $key > productKey.txt
		;;
		*) echo "Please select a valid flag: use -h to view help"
	esac
else
	echo $key
fi


		
