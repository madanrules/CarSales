require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a seller, I want to provide the list of services to the user.' do
  scenario "list of services" do
    services = ['lorem','ipsum','dolor']
    visit '/seller/1/services'
    fill_in 'name' with: 'Rental'
    expect(page).to have_content("Service has been added")
  end
end
