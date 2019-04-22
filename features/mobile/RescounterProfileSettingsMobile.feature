#Feature for live mobile scenarios only
Feature: Rescounter profile Settings mobile
In order to view my informations on profile page
As a logged in customer 
I must be able to view my personal informations

@profile_rescounterProfileSettingsMobile_viewMyAccount_M @mobile
Scenario: View my Account
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

@profile_rescounterProfileSettingsMobile_editInformation_M @mobile
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