class TestRidesController < ApplicationController
	 before_action :set_test_ride, only: [:confirmation]

	def new
		@test_ride = TestRide.new
	end

	def create
		@test_ride = TestRide.new(test_ride_params)  
    if @test_ride.save
    	redirect_to "/test_rides/#{@test_ride.id}/confirmation"
    end
	end

	def confirmation
	end

	private
	  def set_test_ride
	  	@test_ride = TestRide.find(params[:id])
	  end

	  def test_ride_params
	  	params.require(:test_ride).permit(:address, :date, :user_id, :car_id)
	  end
end
