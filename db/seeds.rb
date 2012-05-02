# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => 'me@tonycoconate.com', :password => 'cocomen3', :role => 'admin')
User.create(:email => 'namsicklz@googlemail.com', :password => 'abc123', :role => 'admin')
