require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a buyer,I want to write a review' do
  scenario "Write a review" do
    visit '/users/sign_in'
  	fill_in 'user_email', with: 'testuser@gmail.com'
  	fill_in 'user_password', with: 'admin123'
  	click_button 'Sign in'
    visit '/seller/1'
    page.find(".review").click
    visit '/reviews/new?seller_id=1'
    fill_in 'review_description', with: 'test description'
    click_button 'create review'
  end
end