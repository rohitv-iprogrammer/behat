#Feature for live mobile scenarios only
Feature: Rescounter confirmation mobile
In order that I do a reservation
As a paying customer
I must be able to see reservation information

@confirmation_rescounterConfirmationMobile_compareInformationFromBookAndConfirmation_M @mobile
Scenario: Compare information from book and confirmation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
When I have booked a room
And I cancel this reservation with reason "Change of Plans"
Then I should see "YOUR RESERVATION IS CANCELLED" 