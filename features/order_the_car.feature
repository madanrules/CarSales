Feature: Order the Car
    Buyer can order a car
 
    Scenario: Order a car
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
		    And I fill in "user_password" with "admin123"
		    And I click "Sign in"
		    Then page should have the content "Signed in successfully."
        Given I am on the car show page
        When I press "Order This Car"
        Then page should have notice message "Your Car has been ordered"
        And I click "Sign out"
        Then page should have the content "Signed out successfully."