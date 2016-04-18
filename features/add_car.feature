Feature: As a seller, I want to add cars so that the buyer can buy them.
    Buyer can view the list of cars
 
    Scenario: Add a car
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
		    And I fill in "seller_password" with "admin123"
		    And I click "Sign in"
		    Then page should have the content "Signed in successfully."
        Given I am on the adding car page
        When I fill car form
        When I press "Create Car"
        Then page should have the content "Car was successfully created."
        And I click "Signout"
        Then page should have the content "Signed out successfully."
        
