Feature: As a buyer, I will go to see my profile.
    Buyer can see to his profile
 
    Scenario: buyer profile
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Given I am on the buyer profile page