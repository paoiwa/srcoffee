# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Status.create(:name => "Cancel")

#['registered', 'banned', 'moderator', 'admin'].each do |role|
#  Role.find_or_create_by_name role
#end

# puts 'CREATING ROLES'
# Role.create([
#   { :name => 'admin' }, 
#   { :name => 'user' }, 
#   { :name => 'VIP' }
# ], :without_protection => true)
# puts 'SETTING UP DEFAULT USER LOGIN'
# user = User.create! :name => 'Admin', :email => 'admin@admin.com', :password => 'admin123', :password_confirmation => 'admin123'
# puts 'New user created: ' << user.name
# user2 = User.create! :name => 'Pao', :email => 'pao@iwa.fi', :password => 'paopao123', :password_confirmation => 'paopao123'
# puts 'New user created: ' << user2.name
# user.add_role :admin
# user2.add_role :VIP


#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Status.create([{id: 1, name: 'Ordering'},{id: 2, name: 'Done'},{id: 3, name: 'Cancel'}])
Coff.create([
	{name: 'Espresso Hot', price: 40},
	{name: 'Espresso Cool', price: 45},
	{name: 'Latte Hot', price: 40},
	{name: 'Latte Cool', price: 45},
	{name: 'Mocha Hot', price: 50},
	{name: 'Mocha Cool', price: 55},
	{name: 'Americano Hot', price: 40},
	{name: 'Americano Cool', price: 45},
	{name: 'Chocolate Hot', price: 40}
	])