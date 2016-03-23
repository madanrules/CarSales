require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "Name",
      :year => "Year",
      :image => "Image",
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Price/)
  end
end
