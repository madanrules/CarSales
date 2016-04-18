Feature: As a seller, I want to edit my profile.
    Seller can edit profile
 
    Scenario: login to the system
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
        And I fill in "seller_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."
        Then I go to the buyer edit profile page
        And I press "Update"
        Then page should have the content "Profile was successfully updated."