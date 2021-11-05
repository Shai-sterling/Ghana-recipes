class RecipesController < ApplicationController
  
  def new
    @recipe = Recipe.new
  end

  def create

    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
  end









  private


  def set_recipe
    @recipe = Recipe.find(params[:id])

  end

  def recipe_params

    params.require(:recipe).permit(:title, :name, :description, :image)

  end
end
