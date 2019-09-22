#! /bin/bash
cd /E/Hadoop/shell_test/pic
while true
do
 fc="$(ls | wc -l)"
 if [ $fc -gt 0 ];then
   FILES=/E/Hadoop/shell_test/pic/*
   for f in $FILES
   do
    /mingw64/bin/git add $f
    /mingw64/bin/git commit -m "$(date+%H-%M-%S)"
    /mingw64/bin/git remote add origin git@github.com:gfh62001/remote_git.git
    /mingw64/bin/git push -u origin master
    /mingw64/bin/git remote remove origin
   done
 fi;
 rm -rf /E/Hadoop/shell_test/pic/*
 sleep 3
done