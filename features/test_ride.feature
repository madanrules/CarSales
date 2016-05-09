Feature: Test Ride
    Buyer can test ride
 
    Scenario: Test Ride
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
            And I fill in "user_password" with "admin123"
            And I click "Sign in"
            Then page should have the content "Signed in successfully."
        Given I am on the Home page
        When I go to the click test ride page
        Given I am on the test ride page
        When I fill in "test_ride_address" with "test address"
        When I fill in "test_ride_date" with: "2016-05-09"
        When I fill in "test_ride_user_id" with: "1"
        When I fill in "test_ride_car_id" with: "1"
        And I click "Create Test ride"
        Given I am on the Confirmation page
        Then page should have the content "You have sucessfully booked your test ride on."