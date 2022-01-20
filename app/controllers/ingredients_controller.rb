class IngredientsController < ApplicationController
    
 before_action :set_recipe, only: %i[new show edit destroy update]  

def new
end

def create
    @ingredient =  @recipe.ingredients.create(ingredient_params)
    redirect_to @recipe
end

def edit
    @ingredient =  @recipe.ingredients.find(params[:id])
end

def update
    @ingredient = @recipe.ingredients.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to @recipe 
end

def destroy  
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
