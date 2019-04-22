#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter confirmation dev desktop
In order that I do a reservation
As a paying customer
I must be able to see reservation information

@confirmation_layoutBlue0RescounterConfirmationDevDesktop_compareInformationFromBookAndConfirmation_dev @dev
Scenario: Compare information from book and confirmation
Given I am on "/hotels/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true"
When I go to book page
Then I do a test reservation
And confirmation page information should be equal to book page