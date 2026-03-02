## Filters

less - reader
tail - last rows of file
head - first rows of file
cut - segregate text by dellimeter
awk - intelligent search by dellimeter


Replace words in vim -
:%s/{word}/{replacedWord}/g
sed - command to replace words from terminal and for multiple files
sed 's/{wordToReplace}/{replacedWord}' filename
## Redirections
cat > /etc/passwd - with one arrow overwrites contents of file
cat >> /etc/passwd - with two arrows appends to existing text

## Counting
wc -l filename - count lines in file

## Piping
ls | wc -l - generate output from ls and pass it as a value to wc -l.