#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter profile Notifications dev
In order to view the email notifications options on profile page
As a logged in customer
I must be able to view the notifications options

@profile_rescounterProfileNotficationsDev_notificationsTab_dev @dev @Story:#15268
Scenario: Notification tab
Given I am on "/?autoQA=true"
And user is logged in
When I access "Notifications" tab
Then I should be able to see the notifications options

@profile_rescounterProfileNotificationsDev_notificationsOptions_dev @dev @Story:#15268
Scenario: Notification options
Given I am on "/?autoQA=true"
And user is logged in
When I access "Notifications" tab
And I click on "save button"
Then I should see text matching "Your changes have been saved."

@profile_rescounterProfileNotficationsDev_notificationsTab_dev_M @mobile @dev @StoryM:#15268
Scenario: Notification tab
Given I am on "/?autoQA=true"
And user is logged in
When I access "Notifications" tab
Then I should be able to see the notifications options

@profile_rescounterProfileNotificationsDev_notificationsOptions_dev_M @mobile @dev @StoryM:#15268
Scenario: Notification options
Given I am on "/?autoQA=true"
And user is logged in
When I access "Notifications" tab
And I click on "save button"
Then I should see text matching "Your changes have been saved."