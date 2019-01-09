Feature: Scaning a order code to picked up  the order on a locker

    This feature Describe how Customer application works

    Scenario: Scan a pick up code (clientCode) of a schedule with one dispense assigned a position
        Given I have a clientCode
        Given I am in the customer view
        When I write the code into the input label
        When I select Submit button
        Then Appears the loading while the transactions is completed
        Then Must show an animation to indicates the compartment where is located the schedule
        Then Must show a message "your item(s) below are ready to pick-up in compartment" and shows the number of the compartment
        And Must paint the position of the compartment

    Scenario: Scan a pick up code (clientCode) of a dispense assigned a position (Schedule with more one dispense)
        Given I have a clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then Must shows an animation to indicates the compartment where is located the item with status loaded
        Then Must show a message "your item(s) below are still being prepared. you will receive another notification when ready"
        And shows the item (s) pending like the items with status dispensed.

    Scenario: Scan a clientCode wrong
        Given I have a already clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then Must show a message " "

    Scenario: Verify the status of the shcedule picked up
        Given I am in the customer view
        When I write the code into the input label
        Then The order must change its status to dispensed
        And Must show a message " "

    Scenario: verify the time of return to the initial scan screen
        Given I write the code into the input label
        When I take my dispense(item)
        Then The initial scan screen must return after 20 seconds timeout.

    Scenario: verify the pick up when has a alcoholic item and other item without alcohol
        Given I have a already clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then

    Scenario: verify the pick up when has a lock down item and other item is loaded
        Given I have a already clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then

    Scenario: verify the pick up when are all items in loaded
        Given I have a already clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then Must show an animation to indicates the compartment where is located the schedule
        Then Must show a message "your item(s) below are ready to pick-up in compartment" and shows the number of the compartment
        And Must paint the position of the compartment

    Scenario: verify the clientcode when I don't take the order from locker comparment
        Given I have a already clientCode
        Given I write the code into the input label
        When I don't take the order from locker compartment
        Then 

lock down
verify
ready
not ready

lock down
ready
not ready


verify
ready
not ready




*** pending to do*****
loading
alerts verify the messages. 
list of items ready
verify the device and its positions
verify phidget has credentials doesn't exist.(node red) -- not turn off the light
just can do pickup with the order
doesn't return to home when I apply the sensor
must return to the home after 20 sg always?
multiple locker issues to do pickup- not ready ok but the app isn't painting them

