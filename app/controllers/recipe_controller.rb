class RecipeController < ApplicationController

def index
  @recipes = Recipe.all
  render("/recipes/index.html.erb")
end

end
