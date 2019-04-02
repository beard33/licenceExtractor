# licenceExtractor
This simple script allows you to retrieve your windows licence from a linux environment looking for it inside the ACPI tables.

## How to use
In order to use the script you have to:
* Clone the repository or download the zip and extract the script
* Make the script executable
```
chmod +x ./licenceExtractor.sh
```
* Execute the script 
```
./licenceExtractor.sh
```

## Options
The script allows two execution mode:
* The first one *without* the `-f` flag, printing the retrieved licence on the stdout
```
user@host ./licenceExtractor.sh
[sudo] password for user:

XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

* The second one *with* the `-f` flag, printing the retrieved licence in a `licence.txt` file
