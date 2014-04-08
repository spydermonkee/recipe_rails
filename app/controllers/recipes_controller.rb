class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @tags = Tag.all
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      flash[:notice] = "Your Recipe was created."
      redirect_to recipes_path
    else
      render "new"
    end
  end

  def edit
    @recipe = Recipe.find params[:id]
    @tags = Tag.find(@recipe.id.tag)
  end

  def update
    @tags =Tag.all
    @recipe = Recipe.find params[:id]
    @recipe.update recipe_params
    if @recipe.save
      flash[:notice] = "Your Recipe was updated"
      redirect_to recipe_path @recipe
    else
      render "edit"
    end
  end

  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    flash[:notice] = "Recipe Deleted"
    redirect_to '/recipes'
  end

  private
  def recipe_params
    params.require(:recipe).permit(:id, :name, :instructions, :star_rating, :tag_id)
  end
end
