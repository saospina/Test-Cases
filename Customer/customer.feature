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

    Scenario: verify the pick up when It has a lock down item and other item is loaded
        Given I have a already clientCode
        Given I am in the customer view
        When I write the code into the input label
        Then (warning?)

    Scenario: verify the pick up when  all items are in loaded status
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
        Then ???
    Scenario: Pickup when there are an orders in LockDown and Verify status
        Given I have a clientCode
        Given I have an item in LockDown status
        Given I have an item with Verify
        Given I am in the customer view
        When I write the code into the input label
        Then The system shows the following message "?"

    Scenario: Verify any code with less than 4 numbers
        Given I have a clientCode with less than 4 number
        Given I am in the customer view
        When I write the code into the input label
        Then The system shows the following message "Code needs to be larger than 4 digits"
        

