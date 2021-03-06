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
        And the I click on Load button on another order
        Then I should see the available compartments and put the order there for both orders

    Scenario: Use a wrong compartment
        Given there are more than one position configured
        When I click on Load button on an order
        When I use a diferent compartment to put the order
        Then I receive an alert that It shows the wrong position

        @frictionless
        Scenario: Verify lights for Load using frictionless option 
        Given I have a physical order
        Given The compartment is empty
        Given I put the order into the compartment
        Then The compartment loaded shines to magenta

        




