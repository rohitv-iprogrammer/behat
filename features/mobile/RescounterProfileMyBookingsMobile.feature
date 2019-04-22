#Feature for live mobile scenarios only
Feature: Rescounter profile my booking mobile
In order to find my reservation on profile page
As a logged in customer 
I must be able to see a list of reservation made with my email

@profile_rescounterProfileMyBookingMobile_notificationsTab_dev_M @dev @mobile
Scenario: Notification tab
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Notifications" tab
Then I should be able to see the notifications options

@profile_rescounterProfileMyBookingMobile_notificationsOptions_dev_M @dev @mobile
Scenario: Notification options
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Notifications" tab
And I click on "save button"
Then I should see text matching "Your changes have been saved."