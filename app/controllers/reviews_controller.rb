class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create]

  def new
   @review = Review.new
  end

  def create
    @review = Review.new(the_reviews_params)
    @review.restaurant_id = @restaurant.id

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
end

private

  def the_reviews_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
