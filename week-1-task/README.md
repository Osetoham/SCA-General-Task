# SCA WEEK ONE TASK

This readme very clearly describes the test process and it's output, it also shows the instructions and documentaion used in this task.

**Creating fifteen users on my VM, this command was used**

*adduser the-name-of-user*

<img alt='#' src='img/001.PNG'>

**Creating 3 groups, this command was used**

*groupadd group-name*

<img alt='#' src='img/002.PNG'>
<img alt='#' src='img/004.PNG'>

**To see group created, this command is used**

*cat /etc/group*

<img alt='#' src='img/015.PNG'>

<img alt='#' src='img/016.PNG'>



**Assigning users to the groups created, this command was used**

*usermod -aG name-of-group user*

<img alt='#' src='img/003.PNG'>
<img alt='#' src='img/006.PNG'>



**To demonstrate that user(s) in a group cannot access files/folders that belong to another group unless they are added to that group, the illustration below is provided**

A user (user laura) is given sudo access, the *visudo command lets you edit the sudo files*, in the file below you would see that the admin has access to all files;

<img alt='#' src='img/014.PNG'>
<img alt='#' src='img/005.PNG'>

Hence the user (user laura) is added to group admin; using usermod command, hence this user can use the sudo command, shown below;

<img alt='#' src='img/007.PNG'>

Explaining futher;
*Note: drwx - directory, read, write, excecute*
A directory (Scaschool) is created in directory var, it is shown below that; *User root can read, write and execute*
*Group root can read and execute but not write*
*others can read and execute but not write*

<img alt='#' src='img/008.PNG'>

Firstly group root is given access to write with the command as shown below;

*sudo chmod g+w directory*

<img alt='#' src='img/009.PNG'>

If the user tries to access Scaschool folder which belongs to group root, this action will be denied as shown below;

<img alt='#' src='img/010.PNG'>

The user can only have access to the folder if group root adds the user to the group, shown below;

<img alt='#' src='img/011.PNG'>

Now the the user is in group root, access to the group folders/files is possible, as show below, user laura created a plain text file in the Scaschool folder;

<img alt='#' src='img/012.PNG'>
<img alt='#' src='img/013.PNG'>



























