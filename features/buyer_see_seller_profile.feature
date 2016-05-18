Feature: view the profile
    Buyer can view the profile of seller
 
    Scenario: Order a car
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."
        Given I am on the home page
        And I click on sellers email
        Then page should have the content "Seller profile"
