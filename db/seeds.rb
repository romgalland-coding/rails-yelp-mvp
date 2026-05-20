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
Restaurant.destroy_all

Restaurant.create(name: "Epicure", category: "french", address: "35 rue labat")
Restaurant.create(name: "Prairial", category: "belgian", address: "22 rue custine")
Restaurant.create(name: "Fichon", category: "japanese", address: "10 rue ramey")
Restaurant.create(name: "Schwi", category: "italian", address: "100 rue de la république")
Restaurant.create(name: "La table vermorel", category: "french", address: "12 parc vermorel")
