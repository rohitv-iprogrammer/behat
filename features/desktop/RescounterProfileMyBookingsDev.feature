#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter profile my booking dev
In order to find my reservation on profile page
As a logged in customer 
I must be able to see a list of reservation made with my email

@profile_rescounterProfileMyBookingDev_checkMyBookings_dev @dev @Story:#15268
Scenario: Check my Bookings
Given I am on "/?autoQA=true"
And user is logged in
When I access "My Bookings" tab
Then I should see text matching "My Bookings"

@profile_rescounterProfileMyBookingDev_checkMyBookings_dev_M @mobile @dev @StoryM:#15268
Scenario: Check my Bookings
Given I am on "/?autoQA=true"
And user is logged in
When I access "My Bookings" tab
Then I should see text matching "My Bookings"