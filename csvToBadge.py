#!/usr/bin/python
import sys
import csv
import subprocess

def geraPDF(badge,numero):
    subprocess.call(['./heroku.sh '+ badge+' '+numero], shell = True)
    subprocess.call(['./script.sh '+ badge], shell = True)

file = open(sys.argv[1],'r')
reader = csv.reader(file)
for row in reader:
    geraPDF(row[0],row[1]+1)



