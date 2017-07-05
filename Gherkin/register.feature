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
 
    Scenario: Responder verifies their phone number
        Given The responder has filled out the information form 
        When The responder receives their authentication number
            And Enters it in the auth form in the app
        Then The responder will be logged in
        Then The responder will be returned to the Home page
        Then The responder will be able to receive notifications of emergencies
 
Feature: Get Assistance
    As a requester, I want to receive assistance during my overdose
    Aid should be requested of both EMS and registered app responders
    
    Scenario: Requester uses app to call for aid
        Given The requester has installed the application
            And The application has all required permissions 
        When The requester launches the app
            And The requester clicks help
            And The requester clicks confirm help
        Then The application will send a request to app responders for aid
            And the application will text emergency services requesting aid
 
Feature: Navigate to Requester
    As a responder I want to be able to navigate to a requester
 
    Scenario: Responder wishes to find and assist requester
        Given responder has been selected to respond to the request
            And request is still active
        When responder clicks I will assist
        Then The application will provide a map showing destination and current location
            And provide turn by turn directions to the responder
    
    Scenario: Responder is on site and providing assistance
        Given responder is in the same location as requester
            And directions are no longer required
        When responder clicks requester located
        Then The application will return to the home screen
        Then The system will no longer request further assistance
 
 
