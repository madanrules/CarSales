require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to login.' do
  scenario "Order a car" do

    visit '/users/sign_in'
    fill_in 'user_email', with: 'testuser@gmail.com'
    fill_in 'user_password', with: 'admin123'
    click_button 'Sign in'
    expect(page).to have_content("Signed in successfully.")
    visit '/home/index'
    select 'New', from: "sort_by_date"
    sleep 5
    puts find(:css, '#sort_by_date').value
    puts page.body
    @el = page.all(:css, '.each-car')[0]
    puts @el.text
  end
end
