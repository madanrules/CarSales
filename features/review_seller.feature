Feature: Review a seller
    Buyer can review a seller
 
    Scenario: Review a seller
        When I go to the buyer login page
        When I fill in "user_email" with "testuser@gmail.com"
		    And I fill in "user_password" with "admin123"
		    And I click "Sign in"
		    Then page should have the content "Signed in successfully."
        Given I am on the seller show page
        When I click on "Write a review"
        Given I am on the write a review page
        When I fill in "review_description" with "test description"
        And I click "create review"
        Then page should have the content "Your review has been published."