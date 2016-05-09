require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a buyer,I will give to rate to seller profile' do
  scenario "Rate to seller profile" do
    visit '/users/sign_in'
  	fill_in 'user_email', with: 'testuser@gmail.com'
  	fill_in 'user_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/sellers/1'
    page.find(".star").click
  end
end