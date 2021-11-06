class ReviewsController < ApplicationController
  def new

    @review = Review.new
  end

  def edit
  end
















  private




  def review_params

    params.require(:review).permit(:body, :rating )



  end

end
