```ls -l /bin/login```

`-rwxr-xr-x 1 root root 19080 Apr 1 18:26 /bin/login`


![[FilePermissionsScheme.png]]

### Four symbols are used when displaying permissions:
- **r** - permission to read a file or list a directory's contents
- **w** - permission to write to a file or create and remove files from a directory
- **x** - permission to execute a program or change into a directory and do a long listing of the directory
- **-** : no permission (in place of the r, w, or x)

## Changing Permissions - Symbolic Method
- To change access modes:
	- chmod [-OPTION].... mode[,mode] file | directory ...
- mode includes:
	- u, g, o for user, group and other
	- **+**  **-** or **=** for grant, deny or set
	- r, w, x for read, write execute
- Options include:
	- -R: Recursive
	- -v: Verbose
	- --reference: Reference another file for its mode

### Examples
- `chown -R user:group location`
- `chmod o-x location`
	- o: means others 
	- - : remove
	- x: permission to be removed
- `chmod g+w location` 
	-  g: means group 
	- + : add
	- x: permission to be added
- chmod ugo+r file: Grant read access to all for file
- chmod o-wx dir: Deny write and execute to others for dir

## Changing Permissions - Numeric Method
- Uses a three - digit mode number
	- first digit specifies owner's permissions
	- second digit specifies group permissions
	- third digit represents others' permissions
- Permissions are calculated by adding:
	- 4 (for read)
	- 2 (for write)
	- 1 (for execute)
- Example:
	- chmod 640 myfile