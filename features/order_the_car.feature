Feature: Order the Car
    Buyer can order a car
 
    Scenario: Order a car
        Given I am on the car listing page
        When I press "Order the car"
        Then page should have notice message "Car has been ordered."