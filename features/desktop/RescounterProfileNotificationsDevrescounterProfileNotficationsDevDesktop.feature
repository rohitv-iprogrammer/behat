#Feature for dev desktop scenarios only
Feature: Rescounter profile Notifications dev desktop
In order to view the email notifications options on profile page
As a logged in customer
I must be able to view the notifications options

@profile_rescounterProfileNotficationsDevDesktop_notificationsTab_dev @dev @Story:#15268
Scenario: Notification tab
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "Notifications" tab
Then I should be able to see the notifications options

@profile_rescounterProfileNotficationsDevDesktop_notificationsOptions_dev @dev @Story:#15268
Scenario: Notification options
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "Notifications" tab
And I click on "save button"
Then I should see text matching "Your changes have been saved."