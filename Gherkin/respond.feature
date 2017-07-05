Feature: Navigate to Requester
    As a responder I want to be able to navigate to a requester
 
    Scenario: Responder recieves notification for help
        Given the Responder has turned on avaliablity in their settings
            And they have been polled for location in the last 30 minutes
            And they are within the alerting radius
        Then they will be sent a push notification on their phone
        
    Scenario: Responder accepts notification for help
        When the responder opens the push notification
            And the responder clicks 'I will assist'
        Then the application will provide a map showing destination and current location
        Then provide turn by turn directions to the responder
 
    Scenario: Responder declines notification for help
        When the responder opens the push notification
            And the responder clicks 'I cannot assist'
        Then they will be returned to the main page
            And the system will continue to poll for responders
    
    Scenario: Responder is on site and providing assistance
        Given responder is in the same location as requester
            And directions are no longer required
        When responder clicks 'I am Here'
        Then The application will return to the home screen
        Then The system will no longer request further assistance
