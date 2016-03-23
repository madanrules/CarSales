Feature: As a seller, I want to add cars so that the buyer can buy them.
    Buyer can view the list of cars
 
    Scenario: Add a car
        Given I am on the adding car page
        And I fill 'Name', with: 'Dodge Challenger'
        And I fill 'Price' with: '22500'
        And I fill'image'
        When I press "Add Car"
        Then page should have notice message "Car has been sucessfully added."
        
