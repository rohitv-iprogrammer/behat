#Feature for live desktop scenarios only
Feature: Rescounter reservation desktop
In order that I know the room I want 
As a customer
I must be able to do a reservation

@reservation_rescounterReservationDesktop_doATestReservation @reservation @booking @SmokeRCDesktop
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
Then I do a test reservation

@reservation_rescounterReservationDesktop_doATestReservationWithTwoRooms
Scenario: Do a test reservation with two rooms
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?autoQA=true&skin=current"
When I select 2 rooms
And I go to book page
Then I do a test reservation

@reservation_rescounterReservationDesktop_checkPageTitle
Scenario: Check page title
Given I am on "/reservation/?autoQA=true&skin=current"
Then the page title should be "Reservations"