#!/bin/bash

function logging (){

start=$(date +%s)
TOTAL_NUMBER=$(find $1 -mindepth 1 -maxdepth 1 -type d | wc -l)
TOP_5=$(du -h $1 | sort -n -r | sed -n 2,6p)
NUMBER_OF_FILES=$(find $1 -type f | wc -l)
CONFIGURATION_FILES=$(find $1 -name '*.conf' -type f | wc -l)
TEXT_FILES=$(find . -type f -exec file {} \; | grep ":.* ASCII text"| wc -l)
EXEC_FILES=$(find $1 -executable -exec -type f | wc -l)
LOG_FILES=$(find $1 -name '*.log' -type f | wc -l)
ARCHIVE_FILES=$(find $1 -regex '.*\(tar\|zip\|gz\|rar\)' -type f | wc -l)
SYMBOLIC_LINKS_FILES=$(find $1 -type l | wc -l)
TOP_FILES=$( find $1 -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1" - "$3", "$2}')
TOP_EXEC_FILES=$( find $1 -type f -executable -exec du -h {} + | sort -hr | head -10 | cat -n | awk '{print $1" - "$3", "$2}')


echo "Total number of folders, including subfolders = $TOTAL_NUMBER"
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size): \n$TOP_5"
echo "Total number of files = $NUMBER_OF_FILES"
echo "Number of:"
echo "Configuration files (with .conf extension) = $CONFIGURATION_FILES"
echo "Text files = $TEXT_FILES"
echo "Executable files = $EXEC_FILES"
echo "Log files (with .log extension) = $LOG_FILES"
echo "Archives = $ARCHIVE_FILES"
echo "Symbolic links = $SYMBOLIC_LINKS_FILES"
echo "Top 10 files with largest size in descending order (path, size and type):"
echo "$TOP_FILES"
echo "Top 10 executable files with largest size in descending order (path, size and hash):"
echo "$TOP_EXEC_FILES"
end=$(date +%s.%N)
diff=$(echo "scale=1; ($end - $start) / 1 * 1" | bc)
echo "Script execution time (in seconds) = $diff"
}


