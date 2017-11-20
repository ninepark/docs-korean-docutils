
git checkout -B gh-pages
git rebase docs-korean
touch .nojekyll
cd docutils
tools/buildhtml.py --config=tools/docutils.conf
cd ..
git add . -A
git commit -m "build"
git push -f origin gh-pages
git reset --hard HEAD
git clean -f
git checkout docs-korean
