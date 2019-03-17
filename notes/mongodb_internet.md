## Set up MongoDB to be accessible over internet using username and password. [Source](https://stackoverflow.com/questions/23943651/mongodb-admin-user-not-authorized)

Open instance port: Set tcp:27017 OPEN to ip range `0.0.0.0/0`  

Modify file in `/etc/mongod.conf` [Source](https://ianlondon.github.io/blog/mongodb-auth/):
```
# network interfaces
net:
  port: 27017
#  bindIp: 127.0.0.1  <- comment out this line
```
```
security:
  authorization: 'enabled'
```

Run following commands on mongo shell:  
```
use admin
db.createUser(
  {
    user: "admin",
    pwd: "password",
    roles: [ { role: "root", db: "admin" } ]
  }
);
exit; 
```
