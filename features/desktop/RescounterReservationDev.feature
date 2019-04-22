#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter reservation dev
In order that I know the room I want 
As a customer
I must be able to do a reservation

@book_rescounterReservationDev_doATestReservation_dev @dev
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to book page
Then I do a test reservation

@book_rescounterReservationDev_doATestReservationWithTwoRooms_dev @dev
Scenario: Do a test reservation with two rooms
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?nopopup"
When I select 2 rooms
And I go to book page
Then I do a test reservation

@reservation_rescounterReservationDev_checkPageTitle_dev @dev @Story:#17413
Scenario: Check page title
Given I am on "/reservation/"
Then the page title should be "Reservations"

@book_rescounterReservationDev_doATestReservation_dev_M @mobile @dev
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to book page
Then I do a test reservation

@book_rescounterReservationDev_doATestReservationWithTwoRooms_dev_M @mobile @dev
Scenario: Do a test reservation with two rooms
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?nopopup"
When I select 2 rooms
And I go to book page
Then I do a test reservation

@reservation_rescounterReservationDev_checkPageTitle_dev_M @mobile @dev @StoryM:#17413
Scenario: Check page title
Given I am on "/reservation/"
Then the page title should be "Reservations"