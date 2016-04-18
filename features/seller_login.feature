Feature: As a seller, I want to sign in to the system.
    seller can login
 
    Scenario: login to the system
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
        And I fill in "seller_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."