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


Booking.destroy_all
Yacht.destroy_all
User.destroy_all

puts "adding..."

file = File.open('app/assets/images/arno-senoner-JSjdBEAJnCc-unsplash.jpg')
serenity = Yacht.new(name: "Serenity", model: "Oceanis 46.1", size: 12, price: 1000, description: "The Serenity is a sleek, performance-driven sailing yacht designed for comfort and ease of handling. With its spacious deck, modern interiors, and innovative hull design, it's perfect for families or groups seeking a smooth sailing experience. It features a large cockpit, ample storage, and customizable layouts, making it ideal for both short trips and extended voyages.", address: "Malaga, Spain")
rbryan = User.new(name:"Rilley Bryan",email: "email@email.com", password: "password")
rbryan.save
serenity.user = rbryan
serenity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
serenity.save

hwilliams = User.new(name: "Henry Williams", password: "password", email: "henry@gg.com")
file = File.open('app/assets/images/chuttersnap-MxuJykvWgw0-unsplash.jpg')
elysium = Yacht.new(name: "Elysium", model: "Sunseeker Predator 74", size: 13, price: 3050, description: "The Elysium Predator 74 is a luxury motor yacht known for its bold design and high performance. It boasts a spacious sun deck, state-of-the-art entertainment systems, and luxurious cabins. Perfect for entertaining, it combines speed, style, and comfort, making it a favorite among those who crave a premium yachting experience.", address: "Pula, Croatia")
elysium.user = hwilliams
elysium.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
elysium.save!

mjordan = User.new(name: "Michael Jordan", password: "password", email: "michael.jordan@gmail.com")
azure_dream = Yacht.new(name: "Azure Dream", model: "Azimut Grande 27m", size: 14, price: 1450, description: "The Azure Dream is a masterpiece of Italian craftsmanship, offering unparalleled elegance and cutting-edge technology. With its expansive living spaces, panoramic windows, and high-performance engines, this superyacht is designed for those who demand the finest in luxury and sophistication.", address: "Crete, Greece")
file = File.open('app/assets/images/claudio-poggio-MRVazFxfm50-unsplash (1).jpg')
azure_dream.user = mjordan
azure_dream.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
azure_dream.save!

ewatson = User.new(name: "Emma Watson", password: "password", email: "emma.watson@gmail.com")
wanderlust = Yacht.new(name: "Wanderlust", model: "Princess F55", size: 15, price: 2550, description: "The Wanderlustis a stylish and versatile flybridge yacht, offering a perfect blend of performance and comfort. Its spacious interiors, large sunroof, and well-equipped galley make it ideal for entertaining. With its sleek design and advanced engineering, it's a popular choice for both private and charter use.", address: "Limassol, Cyprus")
file = File.open('app/assets/images/eugene-chystiakov-bt-AYttMuww-unsplash.jpg')
wanderlust.user = ewatson
wanderlust.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wanderlust.save!

pchopra = User.new(name: "Priyanka Chopra", password: "password", email: "priyanka.chopra@gmail.com")
sea_breeze = Yacht.new(name: "Sea Breeze", model: "Beneteau Swift Trawler 47", size: 16, price: 3750, description: "The Sea Breeze is a robust and efficient motor yacht designed for long-distance cruising. It features a comfortable flybridge, spacious cabins, and a fuel-efficient hull, making it perfect for extended trips. Its practical layout and modern amenities cater to families and adventurers alike.", address: "Nice, France")
file = File.open('app/assets/images/marcin-ciszewski-Zexjl0v3MRU-unsplash.jpg')
sea_breeze.user = pchopra
sea_breeze.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
sea_breeze.save!

dbeckham = User.new(name: "David Beckham", password: "password", email: "david.beckham@gmail.com")
poseidon_pearl = Yacht.new(name: "Poseidon's Pearl", model: "Fairline Squadron 50", size: 17, price: 2850, description: "The Poseidon's Pearl is a luxurious flybridge yacht that combines performance with elegance. Its spacious deck, premium interiors, and advanced navigation systems make it ideal for both entertaining and cruising. With its timeless design and superior craftsmanship, it's a standout in its class.", address: "Naples, Italy")
file = File.open('app/assets/images/nir-himi-LIVSRHFCf6w-unsplash.jpg')
poseidon_pearl.user = dbeckham
poseidon_pearl.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poseidon_pearl.save!

nosaka = User.new(name: "Naomi Osaka", password: "password", email: "naomi.osaka@gmail.com")
horizon_chaser = Yacht.new(name: "Horizon Chaser", model: "Lagoon 450F", size: 17, price: 2850, description: "The Horizon Vhaser is a catamaran designed for comfort and stability. Its wide beam, spacious living areas, and large windows provide a bright and airy atmosphere. Perfect for families or charter groups, it offers excellent sailing performance and ample space for relaxation and entertainment.", address: "Barcelona, Spain")
file = File.open('app/assets/images/viktor-ritsvall-FWJinfDsIn8-unsplash (1).jpg')
horizon_chaser.user = nosaka
horizon_chaser.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
horizon_chaser.save!

ldicaprio = User.new(name: "Leonardo Dicaprio", password: "password", email: "leonardo.dicaprio@gmail.com")
celestial_breeze = Yacht.new(name: "Celestial Breeze", model: "Ershing 5X", size: 17, price: 1850, description: "The Celestial Breezeis a high-performance luxury yacht known for its sporty design and cutting-edge technology. With its powerful engines, sleek lines, and luxurious interiors, it's built for speed and style. Ideal for thrill-seekers and those who appreciate modern design, it's a true statement on the water.", address: "Lisbon, Portugal")
file = File.open('app/assets/images/math-s5UahZOyZV0-unsplash.jpg')
celestial_breeze.user = ldicaprio
celestial_breeze.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
celestial_breeze.save!

puts "yachts added!"
