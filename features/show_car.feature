Feature: As a seller, I want to show car's details.
 
    Scenario: show a car
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
		    And I fill in "seller_password" with "admin123"
		    And I click "Sign in"
		    Then page should have the content "Signed in successfully."
        When I go to the car show page
        And I click "Signout"
        Then page should have the content "Signed out successfully."
        