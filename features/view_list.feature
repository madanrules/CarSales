Feature: List the car
    Buyer can view the list of cars
 
    Scenario: view list of cars
        Given I am on the car listing page
        Then page should have the content "List of cars"