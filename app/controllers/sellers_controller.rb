class SellersController < ApplicationController

  def show
    @user = Seller.find(params[:id])
    @reviews = @user.reviews
  end
  
end
