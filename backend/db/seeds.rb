# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

require "faker"

User.destroy_all
Bid.destroy_all
Auction.destroy_all

puts "making users"
User.create({name: "kristina", email:"a@aol.com", password:"password", prof_pic:"tbd"})
User.create({name: "Michael", email:"justin1@aol.com", password:"password", prof_pic:"tbd"})
User.create({name: "Andrew", email:"justin2@aol.com", password:"password", prof_pic:"tbd"})
User.create({name: "Jesse", email:"justin3@aol.com", password:"password", prof_pic:"tbd"})
User.create({name: "Olivia", email:"justin4@aol.com", password:"password", prof_pic:"tbd"})
puts "done making users"

puts "making auctions"

20.times do
Auction.create({item_name:Faker::Dessert.variety,item_description:Faker::GreekPhilosophers.quote, item_pic:"tbd", seller_id:User.all.sample.id, start_date: DateTime.new(2018,10,rand(1..22),4,5,6), end_date: DateTime.new(2018,rand(11..12),rand(1..30),4,5,6)})

end

puts "done making auctions"

puts "making bids"

50.times do

Bid.create({amount:rand(1..100), bidder_id:User.all.sample.id, auction_id:Auction.all.sample.id})

end
puts "done making bids"
