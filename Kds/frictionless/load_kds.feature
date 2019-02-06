Feature: Load functionality

    This Feature describe how to use Frictionless functionality

    @frictionless
    Scenario: Verify lights for Load using frictionless option
        Given  We already have an order
        Given The compartment is empty
        When Put the order into any compartment
        Then The compartment loaded shines to magenta

    @frictionless
    Scenario: Verify Split and load button
        Given There is an order and item already created
        When Put an item into the compartment
        Then Load and Split button are available to select them for all card orders

    @frictionless
    Scenario: Verify message after load an order
        Given There is an item into the compartment
        When The preparer goes to KDS app
        Then Appears the following message: Multi-compartment Load Detected! Tap item to split the order between compartments
        And Also appears a Done button

    @frictionless
    Scenario: Verify when preparer select the all order
        Given There are more than one item into the compartment
        When The preparer goes to KDS app
        When The preparer select all items
        Then The preparer click on Done button
        Then The whole Order disappear from KDS

    @frictionless
    Scenario: Verify when preparer select an item
        Given There are more than one item into the compartment
        When The preparer goes to KDS app
        When The preparer select an items
        Then The preparer click on Done button
        Then The whole Order disappear from KDS

    @frictionless
    Scenario: Remove an order without press the Done button
        Given There is an order already created
        When The preparer puts an item into the compartment
        When The preparer remove the item from the compartment
        Then Message disappear from KDS

     @frictionless
    Scenario: Verify when a preparer select an item without press Done
        Given There an item into the compartment
        When The preparer goes to KDS app
        When The preparer select an items
        When The preparer nerver click on Done button
        Then ?

         @frictionless
    Scenario: Verify when a preparer select an item without press Done
        Given There an item into the compartment
        When The preparer goes to KDS app
        When The preparer select an items
        When The preparer nerver click on Done button
        When The preparer loads an order using pre











if the preparer doesn't press the button and other arrive with other order
if the preparer doesn't press the button and other order arrives with other assinging the same position





