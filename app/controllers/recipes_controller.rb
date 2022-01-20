class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit destroy update]  

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
  end

  def edit    
  end

  def update
   if @recipe.update(recipe_params)
    redirect_to @recipe
   else
    render "edit"
   end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :name, :description, :image)
  end
  
end
