#Feature for dev mobile scenarios only
Feature: Rescounter reservation dev mobile
In order that I know the room I want 
As a customer
I must be able to do a reservation

@book_rescounterReservationDevMobile_doATestReservation_dev_M @mobile @dev @StoryM:18338
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I go to book page
Then I do a test reservation

@reservation_rescounterReservationDevMobile_checkPageTitle_dev_M @mobile @dev @StoryM:18338
Scenario: Check page title
Given I am on "/reservation/?autoQA=true&skin=current"
Then the page title should be "Reservations"