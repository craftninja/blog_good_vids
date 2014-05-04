require 'sequel'
require_relative 'good_vids'
DB = Sequel.connect('postgres://gschool_user:password@localhost/good_vids_development')
run GoodVids
