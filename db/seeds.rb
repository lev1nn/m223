# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# to import data into db -> bundle exec rails db:seed

# Users
User.create(username: "admin", email: "admin@gmail.com", password_digest: "password1234", role: "admin")
User.create(username: "Jay.H", email: "jaydon.hunt@outlook.com", password_digest: "password1234", role: "user")
User.create(username: "MParker", email: "melanie.parker@gmx.com", password_digest: "password1234", role: "user")
User.create(username: "John_Smith", email: "john.smith@gmail.com", password_digest: "password1234", role: "user")

# Categories
Category.create(name: "PCs", product_count: 0)
Category.create(name: "Monitors", product_count: 0)
Category.create(name: "Keyboards", product_count: 0)
Category.create(name: "Mice", product_count: 0)

# Products
Product.create(name: "Apple MacBook Pro 16-inch", description: "Powerful laptop with M1 Pro or M1 Max chip, Retina display, up to 64GB RAM, and up to 8TB SSD.", price: 2499.00, category_id: 1)
Product.create(name: "Acer Predator X27", description: "27-inch 4K gaming monitor with high-refresh rate, G-Sync, and HDR support for immersive gaming.", price: 1999.00, category_id: 2)
Product.create(name: "SteelSeries Apex Pro", description: "Premium mechanical gaming keyboard with adjustable switches and customizable lighting.", price: 199.99, category_id: 3)
Product.create(name: "Logitech MX Master 3", description: "Advanced wireless mouse for productivity with precision scroll wheel.", price: 99.99, category_id: 4)
