# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require "open-uri"
Yacht.destroy_all
User.destroy_all

puts "adding..."

file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
red_yacht = Yacht.new(name: "red", model: "007", size: 12, price: 250, description: "The best red yacht")
new_user = User.new(email: "email@email.com", password: "password")
new_user.save
red_yacht.user = new_user
red_yacht.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
red_yacht.save

user = User.new(name: "Henry", password: "password", email: "henry@gg.com")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
blue = Yacht.new(name: "blue", model: "008", size: 13, price: 350, description: "The best blue yacht")
blue.user = user
blue.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
blue.save!

green = Yacht.new(name: "green", model: "009", size: 14, price: 450, description: "The best green yacht")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
green.user = user
green.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
green.save!

red = Yacht.new(name: "red", model: "001", size: 15, price: 550, description: "The best red yacht")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
red.user = user
red.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
red.save!

purple = Yacht.new(name: "purple", model: "002", size: 16, price: 750, description: "The best purple yacht")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
purple.user = user
purple.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
purple.save!

grey = Yacht.new(name: "grey", model: "003", size: 17, price: 850, description: "The best grey yacht")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
grey.user = user
grey.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
grey.save!


puts "yachts added!"
