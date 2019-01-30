Feature: Scanning a Load code to a locker

    This feature Describe how Rear application works

    Scenario: Scan a load ode to asign a position
        Given I have a order load code
        Given I am in the rear view
        When I type the code into the input label
        When I select Submit button
        Then Appears an animation to indicates the correct compartment with green colour to use it.

    Scenario: Cancel a load of an Order
        Given I am in the rear view
        When I click on the Cancel button
        Then The position must be freed
        And I should can use the codeload again

    Scenario:Return to home after 20 Seconds
        Given I have a order load code
        Given I am in the rear view
        When I type the code into the input label
        When I click Submit button
        When I wait by 20 seconds timeout
        Then the system should return to initial Scan Screen

    Scenario: Release the position assigned previously
        Given I am in the rear view
        When I wait for 20 seconds timeout
        And I do not put the order on the position assigned
        Then the system should realease the position

    Scenario: I type the Load code entered before
        Given I have a order load code
        Given I am in the rear view
        When I type the code entered before into the input label
        When I select Submit button
        Then Appears an message "" with colour

    Scenario: I type the wrong Load code
        Given I am in the rear view
        When I type the wrong code into the input label
        When I select Submit button
        Then Appears an message "" with colour

    Scenario: I type spaces
        Given I am in the rear view
        When I type spaces into the input label
        When I select Submit button
        Then Appears an message "" with colour

    Scenario: I remove digits of panel
        Given I am in the rear view
        Given I type digits into the input label
        When I click cancel button
        Then Must remove all the digits typed

    Scenario: I remove each digits of panel
        Given I am in the rear view
        Given I type digits into the input label
        When I click bkspace button
        Then Must remove each digit typed

    Scenario: I type less of 5 digits
        Given I am in the rear view
        When I type 3 digits into the input label
        Then Appears an message "" with colour

    Scenario: I type more of 10 digits
        Given I am in the rear view
        When I type 10 digits into the input label
        Then Appears an message "" with colour

    Scenario: I type more of 10 digits
        Given I am in the rear view
        When I type 10 digits into the input label
        Then Appears an message "" with colour

    Scenario: The app is loading the big data 
        Given I am in the rear view
        When I type loadCode into the input label
        Then Appears an loading icon
