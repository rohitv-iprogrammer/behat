#Feature for dev desktop scenarios only
Feature: Rescounter profile Settings dev desktop
In order to view my informations on profile page
As a logged in customer 
I must be able to view my personal informations

@profile_rescounterProfileSettingsDevDesktop_viewMyAccount_dev @dev @Story:#15268
Scenario: View my Account
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Settings" tab
Then I should see my account information

@profile_rescounterProfileSettingsDevDesktop_editInformation_dev @dev @Story#15268
Scenario: Edit information
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Settings" tab
Then I could edit my account information:
| element | information |
| guest name | Booking Test|
| guest phone | 5401999999999999 |
| guest country | US |
| profile state | CA |
| guest address | travelnow |
| guest zipcode | 94115 |
| guest city | San Francisco |