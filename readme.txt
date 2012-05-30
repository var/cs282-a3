The scripts in this repo try to solve few of the following requirements:

====

* Write a ﬁle f0 containing UNIX commands, in the directory A3-Name-id-stdid, such that :
* Finds a ﬁle in /users/groups/cs282 which is member of the group 282 and its
length is greater than 0
* If you ﬁnd more than one ﬁle, select the shortest one.
* Your sequence of UNIX commands should identify that ﬁle and copy it in your
home directory. and expand the content of the archive.
* Create a ﬁle f1 containing a list of UNIX commands, in the directory A3-Name-id-stdid, such
that:
*  copy the entire content of the subdirectory sampleA3 in A3-Name-id-stdid
*  create the directory CS282Out in A3-Name-id-stdid.
*  change the group of all the ﬁles in CS282Data to the group cs282. The group
is changed just for the ﬁles, not to the parent directory CS282Data.
*  give permission to read and execute for others to the whole directory CS282in
*  restrict writing permissions for everybody for all the ﬁles in CS282in
*  print each step that is executed.
* Create a ﬁle f2 containing a list of UNIX commands, in the directory A3-Name-id-stdid, such
that:
*  ﬁles with names starting with letter a, containing letter b on the fourth position
in the directory CS282in are selected and concatenated together in the ﬁle name-id.txt
in CS282Out, where name is your name and id is the gid of the person executing the ﬁle
f2.
*  give write access to others, but disable execute for group and others.
*  list the number of ﬁles concatenated together and the statistic for the results
in the following format: name-id.txt contains w words, c characters, and l lines, where
w, c, l are replaced with the real values.
*  print a meaningful message for each processing step.
* Create a ﬁle f3 containing a list of UNIX commands, in the directory A3-Name-id-stdid, such
that:
*  takes the ﬁrst three ﬁles from CS282in starting with letter b in alphabetical
order to CS282out
*  delete all the others starting with letter b and list the names of the deleted
ﬁles
*  execute f1 and f2
*  disable execution for f1 and f2
*  create a directory temp in A3-Name-id-stdid with all permissions for everybody, that cannot be deleted
*  copy f1 in this directory giving execution rights for everybody, but f1 will be
executed as the owner.
