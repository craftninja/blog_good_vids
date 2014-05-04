# README

# create databases

CD into project directory and run the following in the command line:
    $ psql -d postgres -U <username> -f scripts/create_database_good_vids.sql

# create tables

    $ sequel -m migrations postgres://<username>:<password>@localhost/good_vids_development
    $ sequel -m migrations postgres://<username>:<password>@localhost/good_vids_test
