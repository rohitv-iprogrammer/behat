#Feature for dev desktop scenarios only
Feature: Rescounter cancellation dev desktop
In order to cancel a reservation
As a paying customer
I must be able to cancel and see the details of a reservation

@cancellation_rescounterCancellationDevDesktop_cancellationReservation_dev @dev @Story:#15273 @SmokeRCDevDesktop
Scenario: Cancelling a reservation
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true&skin=current"
When I have booked a room
And I cancel this reservation with reason "Change of Plans"
Then I should see "YOUR RESERVATION IS CANCELLED"