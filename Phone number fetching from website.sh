#Q. Create a script that brings out all the phone numbers from this website - https://fakenumber.org/
#!/bin/bash
# Script For Extracting Phone Number From Website
wget  https://fakenumber.org/
grep -o '\([0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}\)\|\(([0-9]\{3\})[0-9]\{3\}\-[0-9]\{4\}\)\|\([0-9]\{10\}\)\|\([0-9]\{3\}\s[0-9]\{3\}\s[0-9]\{4\}\)' index.html > phones.txt
sort -n phones.txt | uniq 


