Feature: Identify responders
    As a security developer I want to identify responders
    So that if there is a problem at the emergency scene, the responder can be identified later
 
    Scenario: Responder registers to use the app with valid information
        Given The responder is not logged in on their phone  
        When The responder launches the app
            And The responder clicks register
            And The responder fills in their information
            And The responder clicks enter
            And The phone number is vaild
        Then The system will send the responder a text message to confirm their phone number
        And the user will be brought to the verification page
        
    Scenario: Responder registers to use the app with invalid information
        Given The responder is not logged in on their phone  
        When The responder launches the app
            And The responder clicks register
            And The responder fills in invalid information
            And The responder clicks enter
        Then The system will request the responder re-enter valid information
 
    Scenario: Responder verifies their phone number
        Given The responder has filled out the information form 
        When The responder receives their authentication number
            And Enters it in the auth form in the app
        Then The responder will be logged in
        Then The responder will be returned to the Home page
        Then The responder will be able to receive notifications of emergencies

    Scenario: Responder requests a resend of the text message
        Given The responder has filled out the information form 
            And the responder is on the verification page
        When The responder clicks 'resend verification'
        Then The text authentication number will be resent
        And The 'resend verification' button will be grayed out to prevent abuse
