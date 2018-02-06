#!/usr/bin/env bash

# manual, ex. man scp
man

# remove directory with all its content
rm -rf directory_name

# copy file from one sever to another
scp user1@server1:/path/to/file user2@server2:/path/to/folder/


###########################
### OPERATIONS ON FILES ###
###########################

# slice csv file, new files named like: `input_000.csv`, `input_001.csv`, etc.
gsplit -dl 100000 -a 3 --additional-suffix=.csv file.csv input_


# sorting
sort --field-separator=';' --key=3 file_1.csv > file_1_sorted.csv
sort --field-separator=';' --key=2 file_2.csv > file_2_sorted.csv
# key: numer kolumny użytej jako zmienna do sortowania. numery zaczynają się od 1.
join -t ";" -1 3 -2 2 <(dos2unix <file_1_sorted.csv) <(dos2unix <sort --field-separator=';' --key=2 file_2.csv > file_2_sorted.csv.csv) > file_1_2.csv
# -1 3 oraz -2 2 określają kolumny odpowiednio z 1 i 2 pliku które mają matchować dane