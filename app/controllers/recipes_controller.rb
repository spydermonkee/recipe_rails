class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render("/recipes/index.html.erb")
  end

  def show
    @recipe = Recipe.find(params[:id])
    render("/recipes/show.html.erb")
  end

end
