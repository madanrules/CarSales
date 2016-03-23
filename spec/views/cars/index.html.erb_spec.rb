require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :name => "Name",
        :year => "Year",
        :image => "Image",
        :price => "Price"
      ),
      Car.create!(
        :name => "Name",
        :year => "Year",
        :image => "Image",
        :price => "Price"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
