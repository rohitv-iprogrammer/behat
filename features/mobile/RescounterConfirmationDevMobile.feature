#Feature for dev mobile scenarios only
Feature: Rescounter confirmation dev mobile
In order that I do a reservation
As a paying customer
I must be able to see reservation information

@confirmation_rescounterConfirmationDevMobile_compareInformationFromBookAndConfirmation_dev_M @mobile @dev
Scenario: Compare information from book and confirmation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
Then I do a test reservation
And confirmation page information should be equal to book page