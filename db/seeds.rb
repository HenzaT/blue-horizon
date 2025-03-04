# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Yacht.destroy_all
User.destroy_all

puts "adding..."

file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
serenity = Yacht.new(name: "Serenity", model: "oceanis 46.1", size: 12, price: 1000, description: "The Serenity is a sleek, performance-driven sailing yacht designed for comfort and ease of handling. With its spacious deck, modern interiors, and innovative hull design, it’s perfect for families or groups seeking a smooth sailing experience. It features a large cockpit, ample storage, and customizable layouts, making it ideal for both short trips and extended voyages.")
new_user = User.new(email: "email@email.com", password: "password")
new_user.save
serenity.user = new_user
serenity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
serenity.save

user = User.new(name: "Henry", password: "password", email: "henry@gg.com")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
elysium = Yacht.new(name: "Elysium", model: "sunseeker predator 74", size: 13, price: 3050, description: "The Elysium Predator 74 is a luxury motor yacht known for its bold design and high performance. It boasts a spacious sun deck, state-of-the-art entertainment systems, and luxurious cabins. Perfect for entertaining, it combines speed, style, and comfort, making it a favorite among those who crave a premium yachting experience.")
elysium.user = user
elysium.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
elysium.save!

azure_dream = Yacht.new(name: "Azure Dream", model: "azimut grande 27m", size: 14, price: 1450, description: "The Azure Dream is a masterpiece of Italian craftsmanship, offering unparalleled elegance and cutting-edge technology. With its expansive living spaces, panoramic windows, and high-performance engines, this superyacht is designed for those who demand the finest in luxury and sophistication.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
azure_dream.user = user
azure_dream.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
azure_dream.save!

wanderlust = Yacht.new(name: "Wanderlust", model: "princess f55", size: 15, price: 2550, description: "The Wanderlustis a stylish and versatile flybridge yacht, offering a perfect blend of performance and comfort. Its spacious interiors, large sunroof, and well-equipped galley make it ideal for entertaining. With its sleek design and advanced engineering, it’s a popular choice for both private and charter use.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
wanderlust.user = user
wanderlust.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wanderlust.save!

sea_breeze = Yacht.new(name: "Sea Breeze", model: "beneteau swift trawler 47", size: 16, price: 3750, description: "The Sea Breeze is a robust and efficient motor yacht designed for long-distance cruising. It features a comfortable flybridge, spacious cabins, and a fuel-efficient hull, making it perfect for extended trips. Its practical layout and modern amenities cater to families and adventurers alike.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
sea_breeze.user = user
sea_breeze.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sea_breeze.save!

poseidon_pearl = Yacht.new(name: "Poseidon's Pearl", model: "fairline squadron 50", size: 17, price: 2850, description: "The Poseidon's Pearl is a luxurious flybridge yacht that combines performance with elegance. Its spacious deck, premium interiors, and advanced navigation systems make it ideal for both entertaining and cruising. With its timeless design and superior craftsmanship, it’s a standout in its class.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
poseidon_pearl.user = user
poseidon_pearl.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poseidon_pearl.save!

horizon_chaser = Yacht.new(name: "Horizon Chaser", model: "lagoon 450f", size: 17, price: 2850, description: "The Horizon Vhaser is a catamaran designed for comfort and stability. Its wide beam, spacious living areas, and large windows provide a bright and airy atmosphere. Perfect for families or charter groups, it offers excellent sailing performance and ample space for relaxation and entertainment.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
horizon_chaser.user = user
horizon_chaser.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
horizon_chaser.save!

celestial_breeze = Yacht.new(name: "Celestial Breeze", model: "ershing 5x", size: 17, price: 1850, description: "The Celestial Breezeis a high-performance luxury yacht known for its sporty design and cutting-edge technology. With its powerful engines, sleek lines, and luxurious interiors, it’s built for speed and style. Ideal for thrill-seekers and those who appreciate modern design, it’s a true statement on the water.")
file = URI.parse("https://www.burgerboat.com/media/original_images/Burger_180_TD_7.jpg.700x506_q80_crop-0%2Cscale_size_canvas_upscale.jpg").open
celestial_breeze.user = user
celestial_breeze.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
celestial_breeze.save!


puts "yachts added!"
