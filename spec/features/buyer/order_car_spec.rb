require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to order the car to buy.' do
  scenario "Order a car" do
    visit '/car/1'
    click_button 'Order Car'
    expect(page).to have_content("Your Car has been ordered")
  end
end
