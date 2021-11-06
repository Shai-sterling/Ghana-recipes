class IngredientsController < ApplicationController


    def new

        @recipe =  Recipe.find(params[:recipe_id])
        @ingredient = Ingredient.new

    end





    private

    def set_recipe

        @recipe =  Recipe.find(params[:recipe_id])
        
    end

    def ingredient_params

        params.require(:ingredient).permit(:name, :quantity, :unit)

    end
end
