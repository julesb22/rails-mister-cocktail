require 'json'
require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient_serialized = open(url).read
# ingredient = JSON.parse(ingredient_serialized)

# ingredient_array = ingredient["drinks"]

  # ingredient_array.each do |ingredient|
  #   ingredient_1 = Ingredient.create(name: ingredient["strIngredient1"])
  # end

@cocktails = Cocktail.all
