require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a buyer, I want to go see my profile.' do
  scenario "See a buyer profile" do
  	visit '/users/sign_in'
    fill_in 'user_email', with: 'testuser@gmail.com'
    fill_in 'user_password', with: 'admin123'
    click_button 'Sign in'
    visit '/profiles'
  end
end