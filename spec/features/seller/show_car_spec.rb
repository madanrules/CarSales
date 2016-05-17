require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to show car details.' do
  scenario "show a car" do
  	visit '/sellers/sign_in'
  	fill_in 'seller_email', with: 'testseller@gmail.com'
  	fill_in 'seller_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/cars/1'
  end
end
