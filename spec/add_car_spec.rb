require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to add cars so that the buyer can buy them.' do
  scenario "Add a car" do
  	visit '/sellers/sign_in'
  	fill_in 'seller_email', with: 'testseller@gmail.com'
  	fill_in 'seller_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/cars/new'
    fill_in 'Name', with: 'Dodge Challenger'
    fill_in 'Price', with: '22500'
    attach_file 'Image', Rails.public_path + "images/image1.jpg"
    find(:xpath, "//input[@id='car_seller_id']").set "1"
    click_button 'Create Car'
    expect(page).to have_content("Car was successfully created.")
  end
end
