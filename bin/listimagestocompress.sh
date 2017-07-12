#!/bin/bash
rm -rf _compressed
mkdir _compressed
cp -r _build _compressed/_build
echo "file;new;orig;difference" > debian/tocompress.txt
for j in $(find _build -name *.png -type f)
do
	pngquant -f --ext .png --quality 70-95 --skip-if-larger _compressed/$j
	a=$(du -b _compressed/$j |awk '{print $1}');
	b=$(du -b $j |awk '{print $1}');

	if [ "$(($a+$a))" -lt "$b"  -a  "$b" -gt 32768 ] ; then
	echo "$j;$a;$b" >>debian/tocompress.txt

	#git add $j
	#git commit -m "Compress $j with pngquant ($a -> $b)"
	fi
done
rm -rf _compressed
