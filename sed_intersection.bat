@echo off

rem  awk -F[^|] "NR == FNR{ a[$0]; next } !($3 in a) { print $3}" task_list.txt done.txt

awk -F[^|] "{ if(NR == FNR) { a[$0]; next }; if(!($3 in a)) { print $3} }" task_list.txt done.txt
