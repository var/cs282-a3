filelist2=(`ls CS282in/b*`)

if [ -d CS282Out/ ]
then
	for (( c=0; c<=2; c++ ))
	do
   		cp ${filelist2[$c]} CS282Out	
	done	
	
	for (( c=0; c<=2; c++ ))
	do
   		cp ${filelist2[$c]} CS282Out	
	done
	
	for (( c=3; c<${#filelist2[@]}; c++ ))
	do
   		rm ${filelist2[$c]}
   		echo "deleted file ${filelist2[$c]}"
	done
else
	printf "CS282Out does not exist\n"
fi

chmod +x f1
chmod +x f2

. f1
. f2

chmod a-x f1.sh
chmod a-x f2.sh

mkdir -p temp
chmod 1777 temp

cp f1 temp
chmod 6711 temp/f1
