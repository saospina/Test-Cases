Feature: Create Order App

    Create an order as a user of Apex I should be able to create and add items to the order, so that I can create an order with one or more items

    Scenario: Create an order with one item

        Given I am logged in the app <appname>

        And Our application is able to receive the record

        When I select one Item

        And I select <create order>

        Then The order should be in Gandalfe

    Scenario: Create an order with two items

        Given I am logged in the app <appname>

        And Our application can receive the record

        When I select more than Item

        And I select <create order>

        Then The order should be in Gandalf

    Scenario: Remove an item of the order created previously.

        Given I am logged in the app <appname>

        And the order is already created

        When I select more an Item

        And I select <delete item>

        Then The item does not appear in the order

    Scenario: Remove all the items

        Given I am logged in the app <appname>

        And the order is already created

        When I select more than Item

        And I select <delete item>

        Then The items do not appear in the orde
