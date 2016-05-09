require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a buyer,I want to test ride' do
  scenario "test ride" do
    visit '/users/sign_in'
  	fill_in 'user_email', with: 'testuser@gmail.com'
  	fill_in 'user_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/home/index'
    page.find(".test_ride_1").click
    visit '/test_rides/new?car_id=1'
    fill_in 'test_ride_address', with: 'test address'
    fill_in 'test_ride_date', with: '2016-05-09'
    fill_in 'test_ride_user_id', with: '1'
    fill_in 'test_ride_car_id', with: '1'
    click_button 'Create Test ride'
    visit '/test_rides/1/confirmation'
  end
end