class ReviewsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.find(params[:id])

  end


  def create
    @recipe =  Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.create(review_params)
    redirect_to @recipe

  end
  

  def update
    
    @recipe =  Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.update(review_params)
    redirect_to @recipe

  end

  def destroy  
    @recipe =  Recipe.find(params[:recipe_id])
    @review =  @recipe.reviews.find(params[:id])
    @review.destroy
    redirect_to @recipe
end


  private

  def review_params

    params.require(:review).permit(:body, :rating)

  end

end
