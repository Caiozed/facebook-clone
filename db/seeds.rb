# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "caio.nevesleite@gmail.com",
						password: "password", 
						password_confirmation: "password")

User.create(email: "zed.zed@zed.com",
						password: "password", 
						password_confirmation: "password")

98.times do	
	User.create(email: Faker::Internet.safe_email,
						password: "password", 
						password_confirmation: "password")
end					
