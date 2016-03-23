require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :name => "MyString",
      :year => "MyString",
      :image => "MyString",
      :price => "MyString"
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_name[name=?]", "car[name]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_image[name=?]", "car[image]"

      assert_select "input#car_price[name=?]", "car[price]"
    end
  end
end
