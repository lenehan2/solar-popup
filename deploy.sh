

exists=`git show-ref refs/heads/gh-pages`
if [ -n "$exists" ]; then
    git branch -D gh-pages
fi
git branch -D gh-pages

git checkout --orphan gh-pages
git add demo/dist* -f
git commit -m "build files"
git push -f origin gh-pages
git checkout master
