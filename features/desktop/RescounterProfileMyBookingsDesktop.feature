#Feature for live desktop scenarios only
Feature: Rescounter profile my booking desktop
In order to find my reservation on profile page
As a logged in customer 
I must be able to see a list of reservation made with my email

@profile_rescounterProfileMyBookingDesktop_checkMyBookings
Scenario: Check my Bookings
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "My Bookings" tab
Then I should see text matching "My Bookings"