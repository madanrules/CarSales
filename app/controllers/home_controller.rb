class HomeController < ApplicationController
  def index
  	@cars = Car.all
  end

  def about_us
  	
  end
end
