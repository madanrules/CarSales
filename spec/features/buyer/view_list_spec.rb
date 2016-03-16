require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a Buyer, I want to view list of cars to buy' do
  scenario "can view list of cars" do
    visit '/list'
    expect(page).to have_content("List of Cars")
  end
end
