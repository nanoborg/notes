#! /bin/bash -e

echo ${pwd}
git add .
echo after add
git commit -m 'auto commit'
git push origin master