Scenario: Trigger alarm
        Given The requester has called for aid
            And a responder is en route
        When The responder is in close proximity to the requester
        Then The requesters device emits a loud alarm
