Feature: Create Bubble 

    Scenario: #1- Verify the user can creates a bubble 
        Given User has an account on Rainbow
        When User navigate to the bubble tab
        And Clicks on the 'Create a bubble' button
        And Enter the bubble name in the 'Create a bubble' modal
        And Clicks 'Next' button
        And Clicks 'Next' button
        And Clicks 'Create' button
        Then The User should be able to see the new bubble added to the bubbles tab 