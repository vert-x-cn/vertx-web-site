#!/bin/sh
echo "Deploying web site"
cd target  || exit -1
rm -Rf scmpublish-checkout
git clone --depth=1 --branch master https://github.com/vert-x-cn/vert-x3.github.io.git scmpublish-checkout
echo "Updating checkout directory with actual content in target/site"
cp -R site/* scmpublish-checkout/
cd scmpublish-checkout  || exit -1
git add -A
git commit -m "update web site"
git push origin master
