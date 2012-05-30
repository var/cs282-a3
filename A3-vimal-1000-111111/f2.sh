cgid=`id -g $USER`
outfile=CS282Out/vimal-$cgid.txt

if [ -d CS282in/ ]
then
	filelist=(`ls CS282in/a??b*`)

	cat ${filelist[@]} > CS282Out/vimal-$cgid.txt

	echo "Files with names starting with letter a, containing letter b on the fourth position in the directory CS282in are selected and concatenated together in $outfile."

	chmod 746 $outfile
	echo "Permissions changed for $outfile."
	echo "Gave write access to others, but disabled execute for group and others"

	echo "the number of files concatinated in $outfile are ${#filelist[@]}"

	nwords=`wc -w $outfile | awk '{ print $1 }'`
	nchar=`wc -c $outfile | awk '{ print $1 }'`
	nlines=`wc -l $outfile | awk '{ print $1 }'`

	echo "$outfile contains $nwords words, $nchar characters, and $nlines lines"
else
	printf "CS282in does not exist.\n"
fi

