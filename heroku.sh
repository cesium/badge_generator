#!/bin/bash
 heroku run rake sei:nr_qrc_generator\[$1,$2,SU\] > $1.in
 echo "sai do heroku"
