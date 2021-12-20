#!/bin/bash
cat ~/.bashrc | sed 's/^[ \t]*//' > sub_file.txt
rm log.txt
while IFS= read -r line
do
if [[ "$line" == "alias"* ]]; then
echo "$line" >> log.txt
fi
done < sub_file.txt
rm sub_file.txt
