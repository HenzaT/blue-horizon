# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

red_yacht = Yacht.new(name: "red", model: "007", size: 12, price: 250, description: "The best red yacht")
new_user = User.new(email: "email@email.com", password: "password")
new_user.save
red_yacht.user = new_user
red_yacht.save
