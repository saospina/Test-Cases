Feature: Bump functionality

    This feature describe how Bump option works

    Scenario: Bump button is disable when the application starts
        Given I load the application with the following command: ng serve kds-kds
        Given I am in the Kitchen Start view
        When the browser loads the localhost:4200 direction
        Then the Bump button should be disabled

    Scenario: Bump button is available to use
        Given I am in the Kitchen Start view
        When  I select and order
        When I click on Load button
        When I put the order on the position
        When I need other compartment
        Then The Bump button is available to use and select it

    Scenario: Request more than 3 compartment
        Given I am in the Kitchen Start view
        When I click on Load button
        When I put the order on the position
        When I need other compartment
        Then Appears a message: More than three compartments used!
        
