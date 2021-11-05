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
    @recipe = Recipe.find(params[:id])

  end


  def update
    @recipe = Recipe.find(params[:id])
   if @recipe.update(recipe_params)
    redirect_to @recipe
   else
    render "edit"
   end

  end




  def destroy

    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path

  end




  private

  # Sets a recipe for edit, show, update and destroy

  def set_recipe
    @recipe = Recipe.find(params[:id])

  end

  def recipe_params

    params.require(:recipe).permit(:title, :name, :description, :image)

  end
end
