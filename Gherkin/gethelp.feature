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
        Then the application will text emergency services requesting aid
