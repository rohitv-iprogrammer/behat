#Feature for dev desktop scenarios only
Feature: Rescounter confirmation dev desktop
In order that I do a reservation
As a paying customer
I must be able to see reservation information

@confirmation_rescounterConfirmationDevDesktop_compareInformationFromBookAndConfirmation_dev @dev @Story:17660
Scenario: Compare information from book and confirmation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
Then I do a test reservation
And confirmation page information should be equal to book page