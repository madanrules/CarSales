require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to login.' do
  scenario "Order a car" do

    visit '/users/sign_in'
    fill_in 'user_email', with: 'testuser@gmail.com'
    fill_in 'user_password', with: 'admin123'
    click_button 'Sign in'
    expect(page).to have_content("Signed in successfully.")
  end
end
