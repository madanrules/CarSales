require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to order the car to buy.' do
  scenario "Order a car" do

  	visit '/users/sign_in'
  	fill_in 'user_email', with: 'testuser@gmail.com'
  	fill_in 'user_password', with: 'admin123'
  	click_button 'Sign in'
  	p ENV['RAILS_ENV']
    visit '/cars/1'
    page.find("#prem").click
    expect(page).to have_content("Your Car has been ordered")
  end
end
