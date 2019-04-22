#Feature for live desktop scenarios only
Feature: Rescounter cancellation desktop
In order to cancel a reservation
As a paying customer
I must be able to cancel and see the details of a reservation

@cancellation_rescounterCancellationDesktop_cancellationReservation_dev @dev @@SmokeRCDesktop
Scenario: Cancelling a reservation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I booked a room
And I cancel this reservation
Then I should see "YOUR RESERVATION IS CANCELLED"