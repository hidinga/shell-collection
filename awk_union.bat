@echo off

rem 并集

awk "!a[$1]++" task_list1.txt task_list2.txt
