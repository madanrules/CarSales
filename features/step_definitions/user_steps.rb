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

When(/^I go to the home page$/) do
  visit '/'
end

When(/^I go to seller profile$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to rate the seller$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^I go to buyer profile$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to rate the buyer$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to review the seller$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to review the buyer$/) do
   # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be able to view the rating and review of the seller$/) do
  # Write code here that turns the phrase above into concrete actions
end

