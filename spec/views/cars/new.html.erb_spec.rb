require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      :name => "MyString",
      :year => "MyString",
      :image => "MyString",
      :price => "MyString"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input#car_name[name=?]", "car[name]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_image[name=?]", "car[image]"

      assert_select "input#car_price[name=?]", "car[price]"
    end
  end
end
