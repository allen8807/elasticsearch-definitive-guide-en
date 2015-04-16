#! /bin/sh
for eachfile in `ls -B`
do
 filename=${eachfile%.asciidoc}
 mv $filename.asciidoc $filename.md
done

for eachfile in `ls -F | grep "/$"`
do
filename=${eachfile}
cd $filename
./../changename.sh
cd ..
done