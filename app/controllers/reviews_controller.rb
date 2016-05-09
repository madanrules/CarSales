class ReviewsController < ApplicationController


  before_filter :authenticate_user!, only: [:new,:create]

  def new
    @reviews = Review.new
    @seller = Seller.find(params[:seller_id])
  end

  def create
    @review = Review.create(description: params[:review][:description], seller_id: params[:seller_id][:seller_id])
    respond_to do |format|
      if @review.save
        format.html { redirect_to seller_path(params[:seller_id][:seller_id]), notice: 'Your review has been published.' }
      else
        format.html { render :new }
      end
    end
  end
end
