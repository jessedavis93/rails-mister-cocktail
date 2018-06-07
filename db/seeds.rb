# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized = open(url).read
list = JSON.parse(serialized)

p "Sending astronauts to the outer depths of the solar system to find the answer..."
p Ingredient.count

10.times do
  Ingredient.create(name: list["drinks"].sample["strIngredient1"])
end

p "Totes seeded"
p Ingredient.count
