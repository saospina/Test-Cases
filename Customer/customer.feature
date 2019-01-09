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

    verify the test because failled.

    lock down 
    ready 

    correct works
    what is the correct flow when I take the order from locker compartment without to do  a Clientcode, Reclaimcode or verify?
    what happen if I take the order without to do reclaim?  change to reclaim.

    verify
    ready
    not ready




    *** pending to do*****
    loading 2
    alerts verify the messages and types. always shows all items in despende
    list of items ready
    verify the device and its positions
    verify phidget has credentials doesn't exist.(node red) -- not turn off the light
    just can do pickup with the order------------- verify
    doesn't return to home when I apply the sensor
    must return to the home after 20 sg always?
    multiple locker issues to do pickup- not ready ok but the app isn't painting the comparments
    --we can do pickup when the order has an item with status verify, 
    but after the system do dispense at the item and don't open the doorand 
    isn't possible  to know what is item that stay in dispense with a loop--

    change to reclaim without open the door. (item that was in lockdown)

    warning 
    not show that items are in a status different to pending and ready 

    .....
    I have some doubts about the correct flow of  Pickup process
    what is the correct flow when I take the order from locker compartment without to do  a Clientcode, Reclaimcode or verify?

    Dave [1:44 PM]
    from the back it should reclaim
    for frictionless
    from the front you need the client code to open the door
    if locker has no front door, it should flash red

    Yessica Gomez [1:50 PM]
    and the status of the item must be the same (should not change )

    Dave [1:50 PM]
    for the flash red?
    yes


    Yessica Gomez [1:55 PM]
    ok, then there is an an issue with this flow in Gandalf; let me do a complete flow with this and I will send you the steps for you replicate it

    Dave [1:59 PM]
    ok

.....




