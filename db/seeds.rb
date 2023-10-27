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

User.create(username: "admin", email: "admin@gmail.com", password_digest: "password1234", role: "admin")

User.create(username: "Jay.H", email: "jaydon.hunt@outlook.com", password_digest: "password1234", role: "user")

User.create(username: "MParker", email: "melanie.parker@gmx.com", password_digest: "password1234", role: "user")

User.create(username: "John_Smith", email: "john.smith@gmail.com", password_digest: "password1234", role: "user")

User.create(username: "Elsie_B", email: "elsie.ballard@yahoo.com", password_digest: "password1234", role: "user")
