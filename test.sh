 
while IFS="" read -r p || [ -n "$p" ]
do
  adb pull '%s\n' "$p" /home/emamaker/Desktop
done < proprietary-files.txt
