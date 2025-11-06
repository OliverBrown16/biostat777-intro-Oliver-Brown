#!/bin/bash

curl -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv

cat students.csv

head -n 5 students.csv
 
tail -n 3 students.csv

wc -l students.csv 
 
grep "Math" students.csv 
 
awk -F',' '$4 == "F"' students.csv

sort -t, -k3n students.csv 

tail -n +2 students.csv | cut -d',' -f6 | sort | uniq

awk -F',' 'NR > 1 {sum += $5; count++} END {print "Average Grade:", sum/count}' students.csv

sed 's/Math/Mathematics/g' students.csv



