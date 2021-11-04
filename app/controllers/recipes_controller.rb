class RecipesController < ApplicationController
  
  def new
    @recipe = Recipe.new
  end

  def create

    @recipe = Recipe.new(recipe_params)
    if @recipe 
      @recipe.save
      redirect_to @recipe
    else
      render "new"
    end

  end

  def show

    
  end

  def edit
  end









  private


  def recipe_params

    params.require(:recipe).permit(:title, :name, :description)

  end
end
