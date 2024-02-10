Feature: Rainbow Guest

    Scenario: #1- Verify that the user will navigate to a screen with 2 entries Rainbow user & Guest by using the bubble link
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And  User share bubble link
        When User/Geuest clicks on the bubble link
        Then User/Geuest will be navigated to screen with two entries: 'Rainbow User and Guest'
        And Rainbow user entry should contain 'open the web application' button and 'open the desktop application' button to move to login page
        And Guest entry should contain 'first name' field and 'last name' field

    Scenario: #2- Verify that 'join' button is disabled when the first name and last name fields are empty
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And  User share bubble link
        When Guest clicks the bubble link
        And The first name and last name fields are empty
        Then The 'join' button should be disabled

    Scenario: #3- Verify that the guest navigate to the seconed secreen successfully
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And  User share bubble link
        When Guest clicks on the bubble link
        And enters the first name and the last name
        And Guest clicks join button
        Then Guest should be navigated to seconed secreen
        And 'Join the conference' button should be appear

    Scenario: #4- Verify that the camera and microphone turned on by default if the user authorized his device
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And  User share bubble link
        When Guest clicks on the bubble link
        And enters the first name and the last name
        And GUest authorized his device
        And Guest clicks join button
        Then Camera and microphone should be turned on

    Scenario: #5- Verify that the guest can turn off the camera and microphone successfully
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And  User share bubble link
        When Guest click on the bubble link
        And enters the first name and last name
        And clicks join button
        And Guest clicks on the toggle buttons
        Then Camera and microphone should be turned off

    Scenario: #7- Verify that the guest can join the conference successfully if the bubble has an active conference
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And User share bubble link
        And User creates conference
        When Guest clicks on the bubble link
        And enters the first name and the last name
        And Guest clicks join button
        And Guest clicks 'join the conference' button
        Then Guest should be directed to the conference call

    Scenario: #8- Verify that the guest will directed the bubble thread successfully if the conference is not active
        Given User has an account on Rainbow
        And User creates a bubble
        And User enables share this bubble by link
        And User share bubble link
        When Guest clicks on the bubble link
        And enters the first name and the last name
        And clicks join button
        And Guest clicks 'join the conference' button
        Then Guest should be directed to the bubble
