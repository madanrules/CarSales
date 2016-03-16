require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to add cars so that the buyer can buy them.' do
  scenario "list of services" do
    services = ['lorem','ipsum','dolor']
    visit '/seller/1/add_cars'
    fill_in 'Name', with: 'Dodge Challenger'
    fill_in 'Price' with: '22500'
    fill_in 'Description', with: 'Awesome Car'
    click_button 'Add Car'
    expect(page).to have_content("Car has been sucessfully added")
  end
end
