Feature: As a seller, I want to edit car's details.
 
    Scenario: Edit a car
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
		    And I fill in "seller_password" with "admin123"
		    And I click "Sign in"
		    Then page should have the content "Signed in successfully."
        Given I am going to edit my car
        When I Edit car form
        When I press "Update Car"
        Then page should have the content "Car was successfully updated."
        And I click "Signout"
        Then page should have the content "Signed out successfully."
        
