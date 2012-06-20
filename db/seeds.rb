# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'student', :email => 'mazab@bigbuddy-me.com', :password => 'kokowawa', :password_confirmation => 'kokowawa', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user2 = User.create! :name => 'admin', :email => '3azzab@gmail.com', :password => '19871987', :password_confirmation => '19871987', :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
user2.add_role :admin
