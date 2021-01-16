# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ingredients = %w(rum whiskey wodka gin angostura lemon ice mint syrup)
puts "Cleaning the Ingedients table"
Ingredient.destroy_all
puts "Creating Ingredients"
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end
puts "Created #{Ingredient.count} Ingredients"
