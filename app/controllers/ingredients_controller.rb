class IngredientsController < ApplicationController
before_acton :set_recipe
def new
    @recipe =  Recipe.find(params[:recipe_id])
end

def create
    @recipe =  Recipe.find(params[:recipe_id])
    @ingredient =  @recipe.ingredients.create(ingredient_params)
    redirect_to @recipe
end

def edit
    @recipe =  Recipe.find(params[:recipe_id])
    @ingredient =  @recipe.ingredients.find(params[:id])
end

def update
    @recipe =  Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to @recipe 
end

def destroy  
    @ingredient =  @recipe.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to @recipe
end

private

    def set_recipe
        @recipe =  Recipe.find(params[:recipe_id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :unit)
    end

end
