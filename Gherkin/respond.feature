Feature: Navigate to Requester
    As a responder I want to be able to navigate to a requester
 
    Scenario: Responder wishes to find and assist requester
        Given responder has been selected to respond to the request
            And request is still active
        When responder clicks I will assist
        Then The application will provide a map showing destination and current location
        Then provide turn by turn directions to the responder
    
    Scenario: Responder is on site and providing assistance
        Given responder is in the same location as requester
            And directions are no longer required
        When responder clicks requester located
        Then The application will return to the home screen
        Then The system will no longer request further assistance
