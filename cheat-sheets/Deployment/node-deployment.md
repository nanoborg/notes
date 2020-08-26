Kasun guide to deploy node = https://gist.github.com/kasun-maldeni/6588035863f5b7a7f8287067116f91ac

Node/Express App - Deployment Guide
Minimum for creating a project
This guide assumes you have run the following commands in your project folder to create a Node/Express app:
- 
  mkdir project_name
  cd project_name
  npm init -y
  npm i express pg
  touch server.js

And your server.js file has at least the following populated to start an app:
- 
  const express = require('express');
  const port = 8080;
  const app = express();
  app.get('/', (req, res) => res.send('hello'));
  app.listen(port, () => console.log(`server listening on port: ${port}`));

Prep application for deployment

Add this start script to your package.json file:
- "scripts": {
    "start": "node server.js"
  },

Replace the port variable in your server.js file with this line:
- ( const port = process.env.PORT || 3000; )

Replace your database connection code with the following:
const pool;
- 
  if (process.env.PRODUCTION) {
    pool = new Pool({
      connectionString: process.env.DATABASE_URL,
    })
  } else {
    pool = new Pool({
      database: 'my_local_database_name',
      user: 'my_local_db_user',
      password: 'optional_password',
    })
  }

Remember to add the following environment variable to Heroku after you deploy: 

- ( PRODUCTION=true )

/ heroku notes: You can also edit config vars from your app’s Settings tab in the Heroku Dashboard:? /


Heroku Stuff

/ Download Heroku
- After installing, run in terminal: ( heroku login )
Make sure you are in your app's root directory, its the one with the server.js file and the .git folder should be in the same place.
- Create heroku app: ( heroku create )
- Deploy app: ( git push heroku master )
- Push from other branch ( git push heroku heroku-deployment:master )
- heroku pg:push beerbuddy DATABASE_URL -f (force)

Database stuff
- Deploy your database: ( heroku pg:push beerbuddy DATABASE_URL )

If you get an error saying you don't have a database on production, run: - ( heroku addons:create heroku-postgresql:hobby-dev )

Continuing to update production as you build your app:
Updating source code
- Type git (add -A, git commit -m "message")
- Finally, (type git push heroku master).
- Type (heroku open) to open the site in your browser.

Updating database
- Reset database: ( heroku pg:reset )
- Push again: ( heroku pg:push beerbuddy DATABASE_URL )

Troubleshooting
- ( heroku logs ) to see what's wrong
- ( heroku pg:psql ) manually access database to run SQL.
- ( heroku restart ) sometimes helps