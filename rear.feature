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
