#!/bin/sh
echo Time for some global rankings...
cd global/bin && rm -rf ../latest
./main.cpp.eXe
rm -rf 1 10 100 2 3 4 5 6 7 8 9
cd .. && cp -R $(date --rfc-3339=date) latest
cd ../..
echo Done!
read
git add global/
git commit -m "update rank"
git push
