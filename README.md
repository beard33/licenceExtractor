# productKeyExtractor ![GitHub top language](https://img.shields.io/github/languages/top/beard33/licenceExtractor.svg) ![GitHub](https://img.shields.io/github/license/beard33/licenceExtractor.svg)
This simple script allows you to retrieve your windows product key from a linux environment looking for it inside the ACPI tables.

## How to use
In order to use the script you have to:
* Clone the repository or download the zip and extract the script
* Make the script executable
```
chmod +x ./productKeyExtractor.sh
```
* Execute the script 
```
./productKeyExtractor.sh
```

## Options
The script allows two execution mode:
* The first one *without* the `-f` flag, printing the retrieved key on the stdout
```
user@host ./productKeyExtractor.sh
[sudo] password for user:

XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

* The second one *with* the `-f` flag, printing the retrieved key in a `productKey.txt` file
