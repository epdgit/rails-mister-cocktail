# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# drinks = ["Mojito", "Bloody Mary", "Sex on the Beach", "Margarita", "Pina Colada"]
# drinks.each do |drink|
#   cocktail = Cocktail.new
#   cocktail.name = drink
#   cocktail.save!
#   puts cocktail.name
# end



def ingredient 
  response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
  json = JSON.parse(response.read)
  json["drinks"].each do |element|
    ingredient = Ingredient.new
    ingredient.name = element["strIngredient1"]
    ingredient.save!
    p "#{ingredient.id} created!"
  end
end

ingredient
