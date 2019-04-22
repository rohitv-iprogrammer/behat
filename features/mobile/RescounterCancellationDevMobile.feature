#Feature for dev mobile scenarios only
Feature: Rescounter cancellation dev mobile
In order to cancel a reservation
As a paying customer
I must be able to cancel and see the details of a reservation

@cancellation_rescounterCancellationDevMobile_cancellationReservation_dev_M @mobile @dev @SmokeRCDevMobile
Scenario: Cancelling a reservation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
When I have booked a room
And I cancel this reservation with reason "Change of Plans"
Then I should see "YOUR RESERVATION IS CANCELLED" 