require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to go see my profile.' do
  scenario "See a seller profile" do
  	visit '/sellers/sign_in'
  	fill_in 'seller_email', with: 'testseller@gmail.com'
  	fill_in 'seller_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/profiles'
    visit '/buyer_profile/1'
  end
end
