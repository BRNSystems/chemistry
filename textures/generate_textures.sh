#!/bin/bash
while read element; do
  elementCode=`echo $element | grep -oP "(\s|^)[a-zA-Z]{1,3}"`
  elementNumb=`echo $element | grep -oP "[0-9]{1,3}"`
  #elementGrou=`echo $element | grep -oP "(?<=[0-9] ).+"`
  
  convert base.png +antialias -gravity Center -pointsize 80 -annotate -0-0 "$elementCode" "$elementCode.png"
done < "elements.txt"
