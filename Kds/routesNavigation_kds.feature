Feature: Routes and Navigation


    Background: Background name
        Given There are orders in created state

    Scenario: Selecting the pages to watch the orders created in Kitchen Start view
        Given I am in Kitchen Start view
        Given I have more than 10 orders in created status
        When I click on the Nav Strips buttons
        Then I should go to other pages to see the remaining orders

    Scenario: Navigation through the menu options
        Given The application has three menu options:
            | Kitchen Start | Locked Down | Verify Order |
        When I click on each one of them
        Then I can navigate to the corresponding routes /load, /lockdown, /verify


