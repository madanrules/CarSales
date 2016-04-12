require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want edit my profile.' do
  scenario "edit a profile" do

    visit '/users/sign_in'
    fill_in 'user_email', with: 'testuser@gmail.com'
    fill_in 'user_password', with: 'admin123'
    click_button 'Sign in'
    visit '/profiles/edit'
    click_button 'Update'
    expect(page).to have_content("Profile was successfully updated.")
  end
end
