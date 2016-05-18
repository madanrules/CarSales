Feature: As a buyer, I will give to rate to seller profile.
    Buyer can rate to seller profile
 
    Scenario: rate to seller profile
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Given I am on the seller profile page
        When I go to click rate
