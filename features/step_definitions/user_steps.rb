Given(/^I am on the about us page$/) do
 visit 'home/about_us'
end

Given(/^I am on the home page$/) do
 visit '/'
end

Then(/^page should have the content "([^"]*)"$/) do |arg1|
  text = "We believe there’s a better, happier way to buy and sell cars. That’s why we offer features like free listings and a map that shows all available cars. It’s also why we put joy into everything we do. CarsGuide is all about focusing on making things clearer, simpler, and a little bit more enjoyable."
  arg1 == text
end

Given(/^I am on the car listing page$/) do
  visit '/cars'
end

When(/^I go to the seller login page$/) do
  visit '/sellers/sign_in'
end

Then(/^I go to the buyer edit profile page$/) do
  click_on('Profile')
  visit '/profiles/edit'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_on arg1
end

Given(/^I am on the adding car page$/) do
  visit '/cars/new'
end

When(/^I fill car form$/) do
  fill_in('Name', with:"John")
  fill_in('Price', with: 22500)
  attach_file 'Image', File.join(Rails.root, 'public', 'images', 'image1.jpg')
end

When(/^I press "([^"]*)"$/) do |arg1|
  find('input[name="commit"]').click
end

Then(/^page should have notice message "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I go to the buyer login page$/) do
  visit '/users/sign_in'
end

Given(/^I am on the car show page$/) do
  visit '/cars/1'
end

Given(/^I am on the service listing page$/) do
  visit '/services'
end

When(/^I click on "([^"]*)"$/) do |arg1|
  click_on(arg1)
end

Given(/^I click on sellers email$/) do
  all('.profile')[1].click
end

Given(/^I am on the seller show page$/) do
  visit '/sellers/1'
end

Given(/^I am on the write a review page$/) do
  visit '/reviews/new?seller_id=1'
end

Given(/^I am on the Home page$/) do
  visit '/home/index'
end

Given(/^I am on the test ride page$/) do
  visit '/test_rides/new?car_id=1'
end

Given(/^I am on the Confirmation page$/) do
  visit '/test_rides/1/confirmation'
end

When(/^I go to the click test ride page$/) do
  click_link('Test Ride', match: :first)
end

When(/^I fill in "([^"]*)" with: "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, with: arg2)
end

Given(/^I am on the seller profile page$/) do
  visit '/sellers/1'
end

When(/^I go to click rate$/) do
  page.first(".star").click
end










