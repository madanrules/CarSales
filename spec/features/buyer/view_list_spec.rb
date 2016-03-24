require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to view list of cars to buy' do
  scenario "can view list of cars" do
    visit '/cars'
    expect(page).to have_content("Listing Cars")
  end
end
