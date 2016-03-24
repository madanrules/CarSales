Feature: As a seller, I want to list services.
    Seller can list services
 
    Scenario: List services
        Given I am on the service listing page
        And I fill 'Name', with: 'Rental'
        When I press "Add Service"
        Then page should have notice message "Service has been sucessfully added."
        
