#!/bin/bash

#Write a shell script to calculate the net salary of an employee in a particular month considering various 
#allowances (TA, DA, HRA) and deductions (INCOME TAX, PROVIDEND FUND) as:
#a. TA=15 percent of basic salary
#b. DA=2 percent of basic salary
#c. HRA=10 percent of basic salary
#d. INCOME TAX=5 percent of salary
#e. PROVIDEND FUND=10 percent of salary

clear
echo "enter basic salary"
read bs
hra='$bs \* 10 / 100 | bc'
ta='$bs \* 15 / 100 | bc'
da='$bs \* 2 / 100 | bc'
tax='$bs \* 5 / 100 | bc'
pf='$bs \* 10 / 100 | bc'
add='$hra + $ta + $da | bc'
ded='$tax + $pf | bc'
netsal='$bs + $add - $ded | bc'
echo
echo net salary is $netsal

