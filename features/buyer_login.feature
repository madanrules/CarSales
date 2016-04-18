Feature: As a buyer, I want to sign in to the system.
    Buyer can login
 
    Scenario: login to the system
        When I go to the buyer login page
        When I fill in "user_email" with "testbuyer@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."