Feature: Create an order as a user of Apex should be able to create and add items to the order

    Preconditions:

    The items must be created

    Scenario: Create an order

        Given Go to the home' screen

        When Type a username

        Then Must show a create button

        And Click on Create button

        And Should redirect to Items' screen

        And Must show the list of items

        And The following elements: Add button, Image, Description, price and remove button

    Scenario: Create an order without username

        Given Go to the home' screen

        When Type a empty 

        Then Must show a create button

    Scenario: Create an order with a username of max 75 characters length

        Given Go to the home' screen

        When Type a username of max 76 characters length

        Then Must show ""
   
    Scenario: Create an order with an item

        Given Go to Items' screen

        And There is a list with items

        When Click on the add button of the item

        Then The app must show the quantity added of the item next to the image

    Scenario: Create an order with two items

        Given Go to the Items' screen

        And There is a list with items

        When Click on add button of the two items

        Then The app must show the quantity added of the item next to the image of the first item.

        And The app must show the quantity added of the item next to the image of the second item.

    Scenario: Remove an item of the order created previously.

        Given Go to the Items' screen

        And There is a list with the items and the quantities.

        When Click on remove button of the first item added

        Then The app must show in the quantity label without value

        And The summary' screen should not have the item.

    Scenario: Remove all the items of the summary' screen

        Given Go to the Items' screen

        When Click on remove button of the items with quantity added

        Then The app must show in the quantity label without value

        And the summary' screen should not have the items.

    Scenario: To look the summary' Order

        Given Go to the Items' screen

        And I have added items

        When Click on summary button

        Then The application must have the following fields:Item, price, Qty, SubT, Tax, total.

    Scenario: To look Credit Order screen

        Given I am summary screen

        When Click on Credit Order button

        Then The application must have the following fields:Credit card number, credit card holder name, expiration date, cvv, Zip


    Scenario: Create two orders with the same items

       
    Scenario: Create an order with alcoholic items

    Scenario: Cancel the creation of an order
