Feature: As a seller, I will go to see my review of user profile.
    seller can see buyer profile
 
    Scenario: see buyer profile
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
        And I fill in "seller_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."
        When I go to see seller profile page
        When I go to the click review of user