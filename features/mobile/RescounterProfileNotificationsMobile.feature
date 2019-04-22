#Feature for live mobile scenarios only
Feature: Rescounter profile Notifications mobile
In order to view the email notifications options on profile page
As a logged in customer
I must be able to view the notifications options

@profile_rescounterProfileNotficationsMobile_notificationsTab_M @mobile
Scenario: Notification tab
Given I am on "/autoQA=true"&skin=current
And user is logged in
When I access "Notifications" tab
Then I should be able to see the notifications options

@profile_rescounterProfileNotficationsMobile_notificationsOptions_M @mobile
Scenario: Notification options
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Notifications" tab
And I click on "save button"
Then I should see text matching "Your changes have been saved."