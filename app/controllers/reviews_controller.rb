class ReviewsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
  end
















  private




  def review_params

    params.require(:review).permit(:body, :rating )



  end

end
