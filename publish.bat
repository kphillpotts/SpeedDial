echo hi

RMDIR /S /Q public

md public

git worktree prune
RMDIR /S /Q ".git/worktees/public/

git worktree add -B gh-pages public origin/gh-pages

RMDIR /S /Q public

md public
hugo

cd public 
git add --all
git commit -m "Publishing to gh-pages (publish.sh)"
git push origin gh-pages
