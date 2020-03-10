rm temp.txt 2>/dev/null
rm output.txt 2>/dev/null
dos2unix domains.csv

i=1
sp="/-\|"
tput setaf 3; echo "This is a script that takes the input of a domains.csv file and checks the status of the domains listed. This is to ensure that the domains are not already set to client hold. The script runs for roughly 3 seconds per domain, so to ensure that the script is actually running there's a small spinner that should appear beneath this text. If the spinner doesn't appear, or it doesn't turn, then there is an issue." 
tput sgr0
while read p; do
	whois $p > temp.txt
	grep "Domain Name" temp.txt >> output.txt
	grep "https://icann.org/epp" temp.txt >> output.txt
	printf "\b${sp:i++%${#sp}:1}"
done < domains.csv

rm temp.txt

grep -B 1 Hold output.txt
