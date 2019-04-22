#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter cancellation dev desktop
In order to cancel a reservation
As a paying customer
I must be able to cancel and see the details of a reservation

@cancellation_layoutBlue0RescounterCancellationDevDesktop_cancellationReservation_dev @dev @SmokeRCDevDesktop
Scenario: Cancelling a reservation
Given I am on "/hotels/coffeyville-ks/days-inn-and-stes-coffeyville-coffeyville-ks/60922b3?autoQA=true"
When I have booked a room
And I cancel this reservation with reason "Change of Plans"
Then I should see "YOUR RESERVATION IS CANCELLED"