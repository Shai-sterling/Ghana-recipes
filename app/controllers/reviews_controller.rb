class ReviewsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
  end




  def create
    @recipe =  Recipe.find(params[:recipe_id])
    @review =  @recipe.reviews.create(review_params)
    redirect_to @recipe

  end















  private




  def review_params

    params.require(:review).permit(:body, :rating )



  end

end
