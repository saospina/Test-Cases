Feature: Scaning a order code to load the order on a locker

    This feature Describe how Rear application works

    Scenario: Scan a code to asign a position
        Given I have a order load code
        Given I am in the rear view
        When I write the code into the input label
        When I select Submit button
        Then Appears an animation to indicates the correct compartment to use it

    Scenario: Selecting the button's numbers
        Given I have a order load code
        Given I am in the rear view
        When I select the buttons
        Then I get the numbers in the input label

    Scenario: Cancel a request scan
        Given I get the numbers in the input label
        When I select the Submit button
        Then I can select a new button named Cancel
        And the order is cancelled

    Scenario: Request more posittions (no esta implementado)
        Given I have a order load code
        Given I am in the rear view
        When I write the code into the input label
        When I select Submit button
        Then Appears a new button named More 
        And I can select it to use a new compartment

        Scenario: Wait for 5 minutes for a compartment (pending)
        Given I have a order load code
        Given I am in the rear view
        When I write the code into the input label
        When I select Submit button
        When I waite for several minutes
        Then the system should return to initial Scan Screen after 20 second timeout 
        
ready
dispense- schedule

pending
alerts solo en el undocode
no tiene vlidacion cuando ingreso un loadcode ya loaded
no es coherente la posicion que muestra con la asignada

