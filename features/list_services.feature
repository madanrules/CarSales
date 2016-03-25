Feature: As a seller, I want to list services.
    Seller can list services
 
    Scenario: List services
        When I go to the seller login page
        When I fill in "seller_email" with "testseller@gmail.com"
		    And I fill in "seller_password" with "admin123"
		    And I click "Sign in"
        Given I am on the service listing page
        Then page should have the content "Listing Services"
        
        
