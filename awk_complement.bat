@echo off

rem 补集

awk -F[^|] "{ if(NR == FNR) { a[$1]; next }; if(!($1 in a)) { print $1} }" task_list.txt done.txt

awk -F[^|] "NR == FNR{ a[$1]; next } !($1 in a)" task_list.txt done.txt

awk -F[^|] "NR == FNR{ a[$1]; next } !($1 in a) { print $1}" task_list.txt done.txt
