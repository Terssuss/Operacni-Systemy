#!/bin/bash

# Creates all users with their full name and password included
useradd -c "Jan Novak" -p uvodniheslo jnovak
useradd -c "Jan Hrabal" -p uvodniheslo jhrabal 
useradd -c "Tereza Simakova" -p uvodniheslo tsimakova
useradd -c "Martin Mazanek" -p uvodniheslo mmazanek
useradd -c "Jitka Kuliskova" -p uvodniheslo jkuliskova

# Creates all groups and adds users to them
groupadd -U jnovak vyucujici
groupadd -U jhrabal tsimakova mmazanek jkuliskova zaci
groupadd -U jhrabal tsimakova mmazanek jkuliskova 1rocnik 
groupadd -U tsimakova mmazanek jkuliskova 2rocnik 
groupadd -U mmazanek, jkuliskova 3rocnik
groupadd -U jkuliskova 4rocnik

# Sets the date on which the listed accounts will be disabled
usermod -e 2022-09-01 jhrabal
usermod -e 2021-09-01 tsimakova 
usermod -e 2020-09-01 mmazanek
usermod -e 2019-09-01 jkuliskova

# Sets the password configuration
passwd -e -n 5 -w 7 -x 180 {jnovak,jhrabal,tsimakova,mmazanek,jkuliskova}
