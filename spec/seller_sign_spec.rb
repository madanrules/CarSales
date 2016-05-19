require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to login.' do
  scenario "login to the system" do
    visit '/sellers/sign_in'
    fill_in 'seller_email', with: 'testseller@gmail.com'
    fill_in 'seller_password', with: 'admin123'
    click_button 'Sign in'
    expect(page).to have_content("Signed in successfully.")
  end
end
