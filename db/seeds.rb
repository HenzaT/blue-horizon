# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "adding..."

user = User.new(name: "Henry", password: "password", email: "henry@gg.com")

blue = Yacht.new(name: "blue", model: "008", size: 13, price: 350, description: "The best blue yacht")
blue.user = user
blue.save!

green = Yacht.new(name: "green", model: "009", size: 14, price: 450, description: "The best green yacht")
green.user = user
green.save!

red = Yacht.new(name: "red", model: "001", size: 15, price: 550, description: "The best red yacht")
red.user = user
red.save!
purple = Yacht.new(name: "purple", model: "002", size: 16, price: 750, description: "The best purple yacht")
purple.user = user
purple.save!
grey = Yacht.new(name: "grey", model: "003", size: 17, price: 850, description: "The best grey yacht")
grey.user = user
grey.save!


puts "yachts added!"
