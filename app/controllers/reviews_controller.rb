class ReviewsController < ApplicationController

    def new
      @review = Review.new
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render 'restaurants/show'
    end

    private
    def review_params
      params.require(:review).permit(:content, :raiting)
    end
  end

end
