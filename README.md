# README

# Deploying
After deploying, run these commands on remote bash:
```
rails db:migrate
rails db:seed
```

Then run these commands on remote rails console:
```
Admin.create(email: 'your@email.here', password: 'yourpasswordhere')
```
