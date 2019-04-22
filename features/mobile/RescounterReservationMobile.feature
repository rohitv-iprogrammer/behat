#Feature for live mobile scenarios only
Feature: Rescounter reservation mobile
In order that I know the room I want 
As a customer
I must be able to do a reservation

@book_rescounterReservationDev_doATestReservation_M @mobile
Scenario: Do a test reservation
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?autoQA=true&skin=current"
When I go to book page
Then I do a test reservation

@reservation_rescounterReservationDev_checkPageTitle_M @mobile
Scenario: Check page title
Given I am on "/reservation/"
Then the page title should be "Reservations"