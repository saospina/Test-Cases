Feature: Load functionality

    This Feature describe how to use the Load Function
    Background: Orders creation done
        Given There are orders in created state

    Scenario: Load just one order created
        Given I am in the Kitchen Start view
        When I select an order
        When I click on Load button
        Then I should see the available compartment and put the order there

    Scenario: Load several orders at time
        Given I am in the kitchen Start view
        And there are more than 10 orders
        And More than one order is selected
        When I click on Load button on an order
        And the I click on Load button on another orderam
        Then I should see the available compartment and put the order there for both orders