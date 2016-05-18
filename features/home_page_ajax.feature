Feature: As a buyer, I want to sign in for ajax.
    Buyer can login for ajax
 
    Scenario: login to the system for ajax
        When I go to the buyer login page
        When I fill in "user_email" with "testbuyer@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."
        When I choose option