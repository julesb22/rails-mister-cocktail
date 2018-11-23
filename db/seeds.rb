require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

ingredient_array = ingredient["drinks"]

  ingredient_array.each do |ingredient|
    ingredient_1 = Ingredient.new(name: ingredient["strIngredient1"])
    dose = Dose.create(name:"mojito")
    dose.ingredient = ingredient_1
  end

  dose.ingredient =

  Cocktail.find(34)


# p Ingredient.find(34)


Cocktail.create(name: "mojito")
Cocktail.create(name: "cuba libre")


