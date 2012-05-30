findFolder='/users/groups/cs282'
findGroup='282'
#testDir='/home/vimal/Desktop/test'
count=0
prevSmallFile=NULL
prevSmall=0
curr=0
currFile=NULL
sizearray=(0, 0, 0)

if [ -d $findFolder ]
then
	filearray=(`find $findFolder -group $findGroup ! -size 0k`)
	
	for (( c=0; c<${#filearray[@]}; c++ ))
	do
	   echo ${filearray[$c]}
	
	done


	for (( c=0; c<${#filearray[@]}; c++ ))
	do
	  sizearray[$c]=`du -sk ${filearray[$c]} | awk '{ print $1 }'`	
	done

	for (( c=0; c<${#filearray[@]}; c++ ))
	do
		if [ "$count" -eq 0 ]
		then
	  	prevSmallFile=${filearray[$c]}
	  	prevSmall=${sizearray[$c]}
	  	
	  	
	  	currFile=${filearray[$c]}
	  	curr=${sizearray[$c]}
  
		else

	  	currFile=${filearray[$c]}
	  	curr=${sizearray[$c]}
  
	  		if [ "$curr" -lt "$prevSmall" ]
	  		then
	  			prevSmallFile=${filearray[$c]}
	  			prevSmall=${sizearray[$c]}
	  		fi
		fi	
	done

	echo "The smallest file is $prevSmallFile of size $prevSmall. Copying it to the home directory."

	cp $prevSmallFile $HOME

	echo "Done."
else
	echo "There is no directory at $findFolder"
fi
