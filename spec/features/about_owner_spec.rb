require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a owner of company want to write about us so that the buyer will know more about the company' do
  scenario "can view about us page" do

    text = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr"
    visit '/about us'
    expect(page).to have_content(text)
  end
end
