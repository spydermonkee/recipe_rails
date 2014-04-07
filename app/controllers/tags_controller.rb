class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find params[:id]
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new tag_params
    if @tag.save
      flash[:notice] = "Tag Generated"
      redirect_to '/recipes'
    else
      render 'new'
    end
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def update
    @tag = Tag.find params[:id]
    @tag.update tag_params
    if @tag.save
      flash[:notice] = "Tag updated"
      redirect_to '/tags'
    else
      render 'edit'
    end
  end

  def destroy
    @tag = Tag.find params[:id]
    @tag.destroy
    flash[:notice] = "Tag Deleted"
    redirect_to '/tags'
  end

  private

  def tag_params
    params.require(:tag).permit(:id, :name)
  end

end
