#!/bin/bash

useradd jnovak -c "Jan Novak" -p uvodniheslo
useradd jhrabal -c "Jan Hrabal" -p uvodniheslo
useradd tsimakova -c "Tereza Simakova" -p uvodniheslo
useradd mmazanek -c "Martin Mazanek" -p uvodniheslo
useradd jkuliskova -c "Jitka Kuliskova" -p uvodniheslo

groupadd vyucujici -U jnovak
groupadd zaci -U jhrabal tsimakova mmazanek jkuliskova
groupadd 1rocnik -U jhrabal tsimakova mmazanek jkuliskova
groupadd 2rocnik -U tsimakova mmazanek jkuliskova
groupadd 3rocnik -U mmazanek, jkuliskova
groupadd 4rocnik -U jkuliskova
