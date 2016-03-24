require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a owner of company want to write about us so that the buyer will know more about the company' do
  scenario "can view about us page" do

    text = "We believe there’s a better, happier way to buy and sell cars. That’s why we offer features like free listings and a map that shows all available cars. It’s also why we put joy into everything we do. CarsGuide is all about focusing on making things clearer, simpler, and a little bit more enjoyable."
    visit 'home/about_us'
    expect(page).to have_content(text)
  end
end
