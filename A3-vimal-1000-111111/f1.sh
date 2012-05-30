# Assuming the user's pwd is A3-vimal-1000-111111
if [ -d sampleA3/ ]
then
	printf "Copying all contents from the directory sampleA3..\n"
	cp -Rv sampleA3/* .
	printf "Done copying.\n"
else
	echo "There is no directory sampleA3/"
fi

if [ -d CS282Out/ ]
then
	printf "CS282Out already exists\n"
	
	printf "Changing the group of all the ﬁles in CS282Data to the group cs282...\n"
	chgrp -Rv cs282 CS282Data/*
	printf "Done changing the user group for the files.\n"
else
	printf "Creating a new directory CS282Out..\n"
	mkdir -v CS282Out
	printf "Successfully created new directory CS282Out\n"
	
	printf "Changing the group of all the ﬁles in CS282Data to the group cs282...\n"
	chgrp -Rv cs282 CS282Data/*
	printf "Done changing the user group for the files.\n"
fi

if [ -d CS282in/ ]
then
	printf "Giving read and execute permissions to other to the whole directory CS282in including the the contents of it...\n"
	chmod -Rv o+rx CS282in 
	printf "Done giving permissions.\n"
	
	printf "Restricting all users from writing for all files in CS282in...\n"
	chmod -v a-w CS282in/*
	printf "Done changing permissions.\n"
else
	printf "CS282in does not exist .. creating CS282in\n"
	mkdir -v CS282in 
	
	printf "Giving read and execute permissions to other to the whole directory CS282in including the the contents of it...\n"
	chmod -Rv o+rx CS282in 
	printf "Done giving permissions.\n"
	
	printf "Restricting all users from writing for all files in CS282in...\n"
	chmod -v a-w CS282in/*
	printf "Done changing permissions.\n"
fi

printf "All commands for this file are successfully executed and the script is exiting..\n"
