# domain-holdcheck
a small script to check the status of a list of domains

this is a script that takes the input of a csv and tells you if they're already set to Hold. 

to use the script, place a single column csv called "domains.csv" into the root directory of the script. run the script, it'll show a message and a little spinner. if there are no domains that already have a hold on them it'll exit onto the terminal, if there are then it'll output a list of the domains that are on hold.
