# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

ingredients["drinks"].each do |element|
  Ingredient.create!(name: element["strIngredient1"])
end


# Cocktail.create!(name: "Absolute exquisite")

# Cocktail.create!(name: "Mojito")

# url2 = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?c=list'

# ingredient_serialized = open(url2).read
# ingredients = JSON.parse(ingredient_serialized)

# ingredients["drinks"].each do |element|
#   Cocktail.create!(name: element["strCategory"])
# end
