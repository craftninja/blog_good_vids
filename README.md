# README

# Good Vids basic Postgres Sinatra CRUD app

This is the project from [the blog post at Emily Platzer Makes Things](http://emily-platzer-makes-things.herokuapp.com/2014/05/05/sinatra-postgres-app.html).

# create databases

CD into project directory and run the following in the command line:
    $ psql -d postgres -U <username> -f scripts/create_database_good_vids.sql

# create tables

    $ sequel -m migrations postgres://<username>:<password>@localhost/good_vids_development
    $ sequel -m migrations postgres://<username>:<password>@localhost/good_vids_test
