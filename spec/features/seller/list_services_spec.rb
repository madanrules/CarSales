require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to provide the list of services to the user.' do
  scenario "list of services" do
  	visit '/sellers/sign_in'
  	fill_in 'seller_email', with: 'testseller@gmail.com'
  	fill_in 'seller_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/services'
    expect(page).to have_content("Listing Services")
  end
end
