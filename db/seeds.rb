# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning up database..."
Yacht.destroy_all
puts "Database cleaned"

red_yatch = Yacht.new(name: "red", model: "admiral", description: "Red", size: 12, price: 200)
red_yatch.save

blue_yatch = Yacht.new(name: "blue", model: "admiral", description: "Blue", size: 12, price: 300)
blue_yatch.save

yellow_yatch = Yacht.new(name: "yellow", model: "admiral", description: "Yellow", size: 12, price: 500)
yellow_yatch.save

black_yatch = Yacht.new(name: "black", model: "admiral", description: "Black", size: 12, price: 700)
black_yatch.save
