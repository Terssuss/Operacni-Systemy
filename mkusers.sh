#!/bin/bash

# Creates all users with their full name and password included
useradd -m -c "Jan Novak" -p uvodniheslo jnovak
useradd -m -c "Jan Hrabal" -p uvodniheslo jhrabal
useradd -m -c "Tereza Simakova" -p uvodniheslo tsimakova
useradd -m -c "Martin Mazanek" -p uvodniheslo mmazanek
useradd -m -c "Jitka Kuliskova" -p uvodniheslo jkuliskova

# Sets the password uvodniheslo for all the users
echo "uvodniheslo" | passwd jnovak
echo "uvodniheslo" | passwd jhrabal
echo "uvodniheslo" | passwd tsimakova
echo "uvodniheslo" | passwd mmazanek
echo "uvodniheslo" | passwd jkuliskova

# Password configuration
chage -d 0 -m 5 -M 180 -W 7 jnovak
chage -d 0 -m 5 -M 180 -W 7 jhrabal
chage -d 0 -m 5 -M 180 -W 7 tsimakova
chage -d 0 -m 5 -M 180 -W 7 mmazanek
chage -d 0 -m 5 -M 180 -W 7 jkuliskova

# Creates all groups and adds users to them
groupadd -U jnovak vyucujici
groupadd -U jhrabal,tsimakova,mmazanek,jkuliskova zaci
groupadd -U jhrabal,tsimakova,mmazanek,jkuliskova 1rocnik
groupadd -U tsimakova,mmazanek,jkuliskova 2rocnik
groupadd -U mmazanek,jkuliskova 3rocnik
groupadd -U jkuliskova 4rocnik

# Sets the date on which the listed accounts will be disabled
usermod -e 2022-09-01 jhrabal
usermod -e 2021-09-01 tsimakova
usermod -e 2020-09-01 mmazanek
usermod -e 2019-09-01 jkuliskova
