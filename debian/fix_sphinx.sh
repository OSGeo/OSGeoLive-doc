#### work around sphinx bug #704: clear out duplicate images
# (osgeo trac #952)
replace_w_symlink()
{
# only act if base is a regular file
if [ -f "$NONUM.$ext" ] ; then
# only act if files are identical
diff "$NONUM.$ext" "$file" > /dev/null
if [ $? -eq 0 ] ; then
#echo "[$file] -> [$NONUM.$ext]"
rm -f "$file"
ln -s "$NONUM.$ext" "$file"
# avoid the need for symlinks
#HITS=`grep -rl "../../_images/$file.$ext" ../[a-z][a-z]/*`
#if [ -n "$HITS" ] ; then
# sed -i -e "s|../../_images/$file.$ext|../../_images/$NONUM.$ext|" $HITS
#fi
fi
fi
}
cd "_build/html/_images/"
SPHX_VER=`dpkg -l python-sphinx | grep sphinx | awk '{print $3}' | cut -f1 -d'+'`
if [ 1 ] ; then
for ext in png jpg gif ; do
for file in *.$ext ; do
if [ -h "$file" ] ; then
# already a symlink
continue
fi
NONUM=`echo "$file" | sed -e "s/[0-9]\+\.$ext//"`
if [ -h "$NONUM.$ext" ] ; then
# replace anyway?? base is already a symlink
continue
fi
if [ "$NONUM" = "$file" ] ; then
continue
fi
if [ -f "$NONUM.$ext" ] ; then
replace_w_symlink
continue
fi
# try with a number after it
if [ `ls "$NONUM"[0-9]."$ext" 2> /dev/null | wc -l` -gt 0 ] ; then
NONUM=`echo "$file" | sed -e "s/[0-9]\.$ext//"`
if [ -f "$NONUM.$ext" ] ; then
replace_w_symlink
continue
fi
fi
# or two
if [ `ls "$NONUM"[0-9][0-9]."$ext" 2> /dev/null | wc -l` -gt 0 ] ; then
NONUM=`echo "$file" | sed -e "s/[0-9]\.$ext//"`
if [ -f "$NONUM.$ext" ] ; then
replace_w_symlink
continue
fi
fi
# or three
if [ `ls "$NONUM"[0-9][0-9][0-9]."$ext" 2> /dev/null | wc -l` -gt 0 ] ; then
NONUM=`echo "$file" | sed -e "s/[0-9]\.$ext//"`
if [ -f "$NONUM.$ext" ] ; then
replace_w_symlink
continue
fi
fi
# or four
if [ `ls "$NONUM"[0-9][0-9][0-9][0-9]."$ext" 2> /dev/null | wc -l` -gt 0 ] ; then
NONUM=`echo "$file" | sed -e "s/[0-9]\.$ext//"`
if [ -f "$NONUM.$ext" ] ; then
replace_w_symlink
continue
fi
fi
# ... still more?
done
done
fi
