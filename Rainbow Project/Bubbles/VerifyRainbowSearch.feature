Feature: Rainbow Search

    Scenario: #1- Verify the apperance of search field 
        Given User has an account on Rainbow
        When User login to his account
        Then User should be able to see the search field on the left side 

    Scenario: #2- Verify the apperance of selector
        Given User has an account on Rainbow
        And User login to his account
        When User clicks on the search field
        Then User should be able to see the selector for people, bubbles, text, channel and companies 
 
    Scenario: #3- Verify that the user can searches about bubble he created or joined successfully
        Given User has an account on Rainbow
        And User login to his account
        When Clicks on the search field
        And User selects bubble filter
        And Enters a character on the search field 
        Then User should be able to see all bubbles he created or joined which starting with this character
    
    Scenario: #4- Verify that the user can searches about rainbow people successfully
        Given User has an account on Rainbow
        And User login to his account
        When Clicks on the search field
        And User selects people filter
        And Enters a character on the search field 
        Then User should be able to see all rainbow people starting with this character

    Scenario: #5- Verify that the user can searches about text he sent/received in conversation successfully
        Given User has an account on Rainbow
        And User login to his account
        When Clicks on the search field
        And User selects text filter
        And Enters a character on the search field 
        Then User should be able to see all text starting with this character

    Scenario: #6- Verify that the user can searches about channel successfully
        Given User has an account on Rainbow
        And User login to his account
        When Clicks on the search field
        And User selects channel filter
        And Enters a character on the search field 
        Then User should be able to see all channels starting with this character

    Scenario: #7- Verify that the user can searches about company successfully
        Given User has an account on Rainbow
        And User login to his account
        And Clicks on the search field
        When User selects company filter
        And Enters a character on the search field 
        Then User should be able to see all companies starting with this character