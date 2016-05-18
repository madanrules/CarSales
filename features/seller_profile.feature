Feature: As a seller, I will go to see my profile.
    Seller can see to his profile
 
    Scenario: seller profile
        When I go to the seller login page
        When I fill in "user_email" with "testuser@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Given I am on the seller profile page
