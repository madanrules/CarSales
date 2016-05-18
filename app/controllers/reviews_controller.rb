class ReviewsController < ApplicationController


  before_filter :authenticate_user!, only: [:new,:create]

  def new
    @reviews = Review.new
    @reviews.build_review_group
    @seller = Seller.find(params[:seller_id])
  end

  def create
    @review = Review.create(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to seller_path(@review.review_group.seller_id), notice: 'Your review has been published.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def review_params
      params.require(:review).permit(:description, review_group_attributes:[:review_id, :user_id, :seller_id])
    end
end
