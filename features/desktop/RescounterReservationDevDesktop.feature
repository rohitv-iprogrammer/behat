#Feature for dev desktop scenarios only
Feature: Rescounter reservation dev desktop
In order that I know the room I want 
As a customer
I must be able to do a reservation

@reservation_rescounterReservationDevDesktop_doATestReservation_dev @dev @reservation @booking @SmokeRCDevDesktop
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
Then I do a test reservation

@reservation_rescounterReservationDevDesktop_checkPageTitle_dev @dev @Story:#17413 @Story:18338
Scenario: Check page title
Given I am on "/reservation/?autoQA=true&skin=current"
Then the page title should be "Reservations"