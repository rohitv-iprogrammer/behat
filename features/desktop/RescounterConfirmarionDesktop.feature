#Feature for live desktop scenarios only
Feature: Rescounter confirmation desktop
In order that I do a reservation
As a paying customer
I must be able to see reservation information

@confirmation_rescounterConfirmationDesktop_compareInformationFromBookAndConfirmation
Scenario: Compare information from book and confirmation
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true&skin=current"
Then I do a test reservation
And confirmation page information should be equal to book page