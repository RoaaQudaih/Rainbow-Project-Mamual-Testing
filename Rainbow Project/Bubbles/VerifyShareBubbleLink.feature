Feature: Share bubble link-Bubble owner can share buble link from bubble menu

    Scenario: #1- Verify the bubble owner can share bubble link successfully
        Given User has an account on Rainbow
        And User creates a bubble
        When User navigate to the bubble menu
        Then User should be able to see 'Share this bubble' option
       
    Scenario: #2- Verify the participant cannot share bubble link 
        Given User/Guest is a participant in a bubble
        When User navigate to the bubble menu
        Then User should not be able to see 'Share this bubble' option

    Scenario: #3- Verify copy bubble link apperance
        Given User has an account on Rainbow
        And creates a bubble
        When User Navigates to bubble menu
        And Chooses 'share this bubble' option
        Then User should be able to see Bubble parameters modal 
        And User should be able to see 'Coppy the link' button

    Scenario: #4- Verify bubble owner can copy bubble link successfully
        Given User has an account on Rainbow
        And User creates a bubble
        When User Navigates to bubble menu
        And Chooses 'share this bubble' option
        And User enables share this bubble by link
        And User navigates to the bubble menu
        And Clicks 'share this bubble' option
        And User clicks 'coppy the link' button
        Then User should be able to see 'The link to your conversation has been copied to the clipboard' message      

    Scenario: #5- Verify reset bubble link icon apperance
        Given User has an account on Rainbow
        And creates a bubble
        When User Navigates to bubble menu
        And Chooses 'share this bubble' option
        Then User should be able to see Bubble parameters modal 
        And User should be able to see refresh icon

    Scenario: #6- Verify bubble owner can reset bubble link successfully
        Given User has an account on Rainbow
        And User creates a bubble
        When User Navigates to bubble menu
        And Chooses 'share this bubble' option
        And User enables share this bubble by link
        And User navigates to the bubble menu
        And Clicks 'share this bubble' option
        And User clicks refresh icon
        Then User should be able to see the link is change 

    Scenario: #7- Verify that the droplist contain 'with everyone' and 'only with the members of this bubble' options
        Given User has an account on Rainbow
        And User creates a bubble
        When User Navigates to bubble menu
        And Chooses 'share this bubble' option
        And User enables share this bubble by link
        And User navigates to the bubble menu
        And Clicks 'share this bubble' option
        And Clicks on the droplist
        Then User should be able to see 'with everyone' and 'only with the members of this bubble' options
    
    Scenario: #8- Verify that everyone can access the bubble when the access set to 'with everyone' option
        Given User has an account on Rainbow
        And User creates a bubble
        When User navigates to the bubble menu
        And User chooses 'share this bubble' option
        And User enables share this bubble by link
        And User navigates to the bubble menu
        And Clicks 'share this bubble' option
        And Clicks on the 'copy the link' button
        And Bubble owner send the link to the guest
        Then The guest should be able to access the bubble

    Scenario: #9- Verify the participant only can access the bubble when the access set to 'only with the member in this bubble' opton
        Given User1 and User2 has an account on Rainbow
        And User1 creates a bubble
        And User2 is a participant in that bubble
        When User navigates to the bubble menu
        And User chooses 'share this bubble' option
        And User enables share this bubble by link
        And User navigates to the bubble menu
        And Clicks 'share this bubble' option
        And User clicks on the droplist
        And Selects 'only with the members of this bubble' option
        And Clicks on the 'copy the link' button
        And User1 send the link to the user2
        Then The user2 should be able to access the bubble   

    Scenario: #10- Verify that the guest cannot access the bubble via the old link when the bubble owner reset the link
        Given User has an account on Rainbow
        And User creates a bubble
        And User navigates to the bubble menu
        And User chooses 'share this bubble' option
        And Bubble owner enables share this bubble by link
        And User navigates to the bubble menu
        And User chooses 'share this bubble' option
        And User share the link with guest 
        And User reset the link 
        When Guest clicks on the old link 
        Then Guest should not be able to use the old link 
        And Should be moved to a window with a 'link no longer valid'  message

    
        