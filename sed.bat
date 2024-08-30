@echo off

rem 针对匹配行的下一行进行替换

sed "/test/{n; s/aa/bb/;}" test.log	

rem 分组捕获

sed "s/\(.\).*/\1/" test.log

sed "s/…$/=&/" test.log	