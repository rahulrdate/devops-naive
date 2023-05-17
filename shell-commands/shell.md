## Introduction
We can use commands to interact with the system. These commands can be executed on a terminal to do some task.

---

## Getting Started
We will see basic commands which are widely used.

---

### pwd - present working directory
`pwd`

### cd - change directory
cd dir - cd to dir
cd / - cd to root
cd ~ - cd to home of current user
cd ../../../ - cd backwards
cd dir1/dir2/dir3 - cd to multiple folders

### ls - list contents
ls - list contents of current directory
ls dir1/dir2/dir3 - list contents of dir3
ls *.pdf - list all pdfs
ls *yagna* - list all files whose name contains yagna
ls -l - long listing format
ls -t - sort by last modified time

### mkdir - create directory
mkdir dir1 - create directory named dir1
mkdir -p dir1/dir2/dir3 - create directory inside directory

### rm - remove file
rm filename - remove file with the name filename
rm command will not delete folder, to delete folder use '-r'
rm -r dir1 - remove all the contents of dir1, -r will delete all the folders and files inside folders
rm -rf dir1 - remove forcefully (-f)

### cp - copy file/folder - works like copy-paste - 2 copies will be made
format: cp source destination
cp file1 file2 - create copy of file - change name of file during copy
cp path/of/file1/file1 /path/of/newfile/file1 
cp command will not copy folder, to copy folder use '-r'
cp -r folder1 folder2 - change name while copy
cp -r folder1 new/path/folder1 - keep same name and copy to different location

### ps - report snapshot of current processes
ps -ef  - get all the processes

PID TTY TIME CMD
----------------------------------------
PID - Process ID of the process - you can use this ID to kill/stop the process
TTY - The terminal from which the process (or its parent) was started. A question mark indicates there is no controlling terminal.
TIME - The total amount of CPU time used by the process since it began.
CMD - Command that generates the process

### grep - searches for pattern
grep "SEARCH STRING" filename
grep -r "SEARCH STRING" . - search string in all files and folders in current folder
grep -r "SEARCH STRING" path/of/the/folder - search string in all the files in given path
grep -e "SEARCH PATTERN" filename or folder - example `grep -e "*g" filename` - search anything ending with g
grep -v "SKIP PATTERN" filename or folder - skip the pattern and show remaining result

### cat - see contents of file
cat filename
cat path/to/some/folder/filename

### cat and grep
cat and grep can be used together to search a string
cat filename | grep "SEARCH STRING" - all above grep commands can be used after the pipe '|'

### File permissions
Every file/folder in Linux have specific permission which describe security for the file.
For example 'drwxr-xr-x' is the file permission.
First character states the file type
Next 9 characters are for file permissions which can be divided into 3 parts.
First 3 - read, write, execute for user
Next 3 - read, write, execute for group
Last 3 - read, write, execute for others

For example the permission 'drwxr-xrw-' means that
1. given type is directory (d)
2. user has read, write, execute permissions (rwx)
3. group has read, execute permissions (r-x)
4. others have read, write permissions (rw-)

### Change file permissions

`chmod` is used to change file permissions

To change directory permissions in Linux, use the following:
- chmod +rwx filename to add permissions
- chmod -rwx directoryname to remove permissions. 
- chmod +x filename to allow executable permissions.
- chmod -wx filename to take out write and executable permissions.
Note that “r” is for read, “w” is for write, and “x” is for execute.

