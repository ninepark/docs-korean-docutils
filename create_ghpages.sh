#!/usr/bin/env bash
# current git branch must be `docs-korean`
git add . -A
git commit -m "automatic commit"
git push origin docs-korean

git checkout -B gh-pages
git rebase docs-korean

touch .nojekyll

cd docutils/tools
cp ../docutils/writers/html4css1/html4css1.css ..
./buildhtml.py --config=tools/docutils.conf --stylesheet-path=../html4css1.css .. ../../web
python rst2html.py "./editors/README_ko.rst" > "./editors/README_ko.html"
cd ../..

git add . -A
git commit -m "build"
git push -f origin gh-pages
git reset --hard HEAD
git clean -f

git checkout docs-korean
