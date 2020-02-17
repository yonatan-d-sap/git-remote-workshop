#!/bin/bash
#start of local flow
mkdir my-git-project
cd my-git-project
git init
echo "first line of file" >> somefile.txt
git add somefile.txt
touch someunwantedfile.txt
git commit -m "added somefile.txt to my repo"
# 1st assignment
echo "this is another change in file!" >> somefile.txt
echo "A kine in anotherfile.txt" >> anotherfile.txt
git add somefile.txt anotherfile.txt
git commit -m "Added lines and new files"
#branches
git branch my-new-branch
git checkout my-new-branch
echo "2nd line added from my-new-branch" >> somefile.txt
git add somefile.txt
git commit –m “added more text to somefile.txt”
git checkout master
gir merge my-new-branch
# 2nd assignment
git checkout -b add-multiple-commits
echo "This is file #1" >> file1.txt
echo "This is file #2" >> file2.txt
git add file*.txt
git commit -m "Added 2 new files to project"
git rm anotherfile.txt
git commit -m "Removed anotherfile.txt it is not needed"
git checkout master
git merge add-multiple-commits

