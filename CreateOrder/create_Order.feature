Feature: Create an order as a user of Apex I should be able to create and add items to the order, so that I can create an order with one or more items.

    Preconditions:

    The items must be created

    The Prepares must be created

    Scenario: Select the preparer in home app

        Given I am in the home

        When I click in a prepare dropdown

        Then the app should show all prepares

    Scenario: I create order

        Given I am in the home

        When I select a prepare dropdown

        And I click on Create Order Button

        Then the App should redirect me to Items screen

        And must show me the list of items

        And the following elements: Add button, Image, Description, price and remove button

    Scenario: Create an order with an item

        Given I am Items screen

        And there is a list with items

        When I click on the add button of the item

        Then The app must show the quantity added of the item below of the image.

    Scenario: Create an order with two items

        Given I am Items screen

        And there is a list with items

        When I click on add button of the two items

        Then The app must show the quantity added of the item below of the image of the first item.

        And The app must show the quantity added of the item below of the image of the second item.

    Scenario: Remove an item of the order created previously.

        Given I am Items screen

        And there is a list with the items and the quantities.

        When I click on remove button of the first item added

        Then The app must show in the quantity label without value

        And the summary screen should not have the item.



    Scenario: Remove all the items of the summary screen

        Given I am Items screen

        When I click on remove button of the items with quantity added

        Then The app must show in the quantity label without value

        And the summary screen should not have the items.

    Scenario: To look the summary Order

        Given I am items screen

        And I have added items

        When I click on summary button

        Then The application must have the following fields:

    Item, price, Qty, SubT, Tax, total.

    Scenario: To look Credit Order screen

        Given I am summary screen

        When I click on Credit Order button

        Then The application must have the following fields:

    Credit card number, credit card holder name, expiration date, cvv, Zip

    Scenario: Create two orders with the same items

        Given I am logged in the app <appname>

        And Our application is able to receive the record

        When I select several Items

        And I select <create order>

        And I repeat the same twice

        Then The order should not be with duplicate records in Gandalf

    Scenario: Create an order with alcoholic items

        Given I am logged in the app <appname>

        And the order is already created

        When I select more than Item

        And I select <delete item>

        Then The items do not appear in the order

screen car
--- when I have 2 digites must show in middle 
--- not assign verify when the item is alcoholic