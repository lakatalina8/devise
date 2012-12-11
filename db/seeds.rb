# This file should contain all the record creation needed to seed the database with its default values.
# The new_items can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Roles
#admin = Role.create!(:name => "admin")
#user = Role.create!(:name => "user")

# UserRoles
# Assignment.new( :user_id=>1, :role_id => Role.find_by_name('admin').id )

#puts 'CREATING ROLES'
#Role.create([
#                { :name => 'admin' },
#                { :name => 'user' },
#                { :name => 'VIP' }
#            ], :without_protection => true)
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
#puts 'New user created: ' << user.name
#user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
#puts 'New user created: ' << user2.name
#user.add_role :admin
#user2.add_role :VIP
