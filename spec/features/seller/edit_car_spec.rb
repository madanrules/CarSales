require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to edit car details.' do
  scenario "edit a car" do
  	visit '/sellers/sign_in'
  	fill_in 'seller_email', with: 'testseller@gmail.com'
  	fill_in 'seller_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/cars/1/edit'
    fill_in 'Name', with: 'Dodge Challenger test'
    fill_in 'Year', with: '2015'
    fill_in 'Price', with: '23500'
    attach_file 'Image', Rails.public_path + "images/image2.jpg"
    find(:xpath, "//input[@id='car_seller_id']").set "1"
    click_button 'Update Car'
    expect(page).to have_content("Car was successfully updated.")
  end
end
