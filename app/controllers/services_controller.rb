class ServicesController < ApplicationController
  def index
  	@services = current_seller.services
  end
end
