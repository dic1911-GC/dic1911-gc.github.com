#!/bin/sh
echo Now cleaning and updating latest TW ranking...
cd tw && rm latest.txt && ./main.cpp.eXe
cp $(date --rfc-3339=date).txt latest.txt
echo Done!
sleep 1
echo Time for some global rankings...
cd ../global/bin && rm -rf ../latest
./main.cpp.eXe
rm -rf 1 10 100 2 3 4 5 6 7 8 9
cd .. && cp -R $(date --rfc-3339=date) latest
cd ../..
echo Done!
read
git add .
git commit -m "update rank"

