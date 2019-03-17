## Set up MongoDB to be accessible over internet using username and password. [Source](https://stackoverflow.com/questions/23943651/mongodb-admin-user-not-authorized)

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
