require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want edit my profile.' do
  scenario "edit a profile" do

    visit '/sellers/sign_in'
    fill_in 'seller_email', with: 'testseller@gmail.com'
    fill_in 'seller_password', with: 'admin123'
    click_button 'Sign in'
    visit '/profiles/edit'
    click_button 'Update'
    expect(page).to have_content("Profile was successfully updated.")
  end
end
