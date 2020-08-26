Kasun guide to deploy ruby = https://gist.github.com/kasun-maldeni/c435ab5b1143b7c47d1b646210310a94

Heroku sinatra deploy guide with PG
Prep application for deployment
This guide assumes you have used sinatra new app_name -va to produce your sinatra application first.

Make the following changes to your local files:

You must list the gems that your project uses in the Gemfile. example:
source 'https://rubygems.org'

gem 'sinatra'
gem 'pg'
gem 'bcrypt'
gem 'httparty'
We need to gem install bundler, then enter the bundle command in our terminal to build a Gemfile.lock file.

Change the PG.connect line to look like below:

PG.connect(ENV['DATABASE_URL'] || {dbname: 'GoodFoodHunting'})
Replace require 'sinatra/reloader' line with require 'sinatra/reloader' if development?. Do the same if you have any also_reload lines, e.g. also_reload File.expand_path(__dir__, 'models/*') if development?

Remove all binding.pry in your code, you don't want your production server to pause execution!

This concludes our local file setup.

Heroku Stuff
Download Heroku
After installing, run in terminal: heroku login
Make sure you are in your app's root directory, its the one with the main.rb file and the .git folder should be in the same place.
Create heroku app: heroku create
Deploy app: git push heroku master
Database stuff
Deploy your database: heroku pg:push local_database_name DATABASE_URL

If you get an error saying you don't have a database on production, run: heroku addons:create heroku-postgresql:hobby-dev

Continuing to update production as you build your app:
Updating source code
Type git add -A, git commit -m "message"
Finally, type git push heroku master.
Type heroku open to open the site in your browser.
Updating database
Reset database: heroku pg:reset
Push again: heroku pg:push local_database_name DATABASE_URL
Troubleshooting
heroku logs to see what's wrong
heroku pg:psql manually access database to run SQL.
heroku restart sometimes helps
sign up to https://signup.heroku.com/

download / install: heroku

heroku login

install gem bundler (install gem from gem file)

run cmd from the directory where Gemfile is bundle looks for gems to install from the Gemfile