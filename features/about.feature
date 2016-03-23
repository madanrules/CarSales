Feature: About us
    About us page should have content
 
    Scenario: Should have about us page
        Given I am on the about us page
        Then page should have the content "Lorem Ipsum doler"