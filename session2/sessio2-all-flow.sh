mkdir my-remote-repo
cd my-remote-repo
git init --bare
cd ../my-git-project
git remote add origin ../my-remote-repo
git push origin master
cd ..
git clone my-remote-repo my-local-git-repo
cd my-local-git-repo
git branch new-movie-quote
git checkout new-movie-quote
echo "Frankly my dear I don’t..." >> somefile.txt
git add somefile.txt
git commit -m "Added a new movie quote to text"
git push origin new-movie-quote
git push origin master
cd ../my-git-project
git checkout master
git fetch
git merge origin/master

