# Useful commands
sudo service mongod start
sudo service mongod restart
sudo service mongod stop

# Connect internet
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

Add admin user [Source](https://docs.mongodb.com/manual/tutorial/enable-authentication/):  
```
use admin
db.createUser(
  {
    user: "myUserAdmin",
    pwd: "abc123",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ]
  }
)
```
