Feature: As a buyer, I want to edit my profile.
    Buyer can edit profile
 
    Scenario: login to the system
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
        And I fill in "user_password" with "admin123"
        And I click "Sign in"
        Then page should have the content "Signed in successfully."
        Then I go to the buyer edit profile page
        And I press "Update"
        Then page should have the content "Profile was successfully updated."