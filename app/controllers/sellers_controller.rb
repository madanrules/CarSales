class SellersController < ApplicationController

  def show
    @user = Seller.find(params[:id])
    @reviews = Review.where(seller_id: params[:id])
  end
  
end
