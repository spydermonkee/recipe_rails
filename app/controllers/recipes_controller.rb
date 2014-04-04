class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render("/recipes/index.html.erb")
  end

  def show
    @recipe = Recipe.find(params[:id])
    render("/recipes/show.html.erb")
  end

  def new
    @recipe = Recipe.new
    render "/recipes/new.html.erb"
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      redirect_to "/recipes"
    else
      render "recipes/new"
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render "/recipes/update.html.erb"
  end

  def update
    @recipe = Recipe.find params[:id]
    @recipe.update params[:recipe]
    if @recipe.save
      redirect_to('/recipes')
    else
      render('/recipes/update.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to '/recipes'
  end
end
