#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter profile Settings dev
In order to view my informations on profile page
As a logged in customer 
I must be able to view my personal informations

@profile_rescounterProfileSettingsDev_viewMyAccount_dev @dev @Story:#15268
Scenario: View my Account
Given I am on "/autoQA=true"
And user is logged in
When I access "Settings" tab
Then I should see my account information

@profile_rescounterProfileSettingsDev_editInformation_dev @dev @Story#15268
Scenario: Edit information
Given I am on "/autoQA=true"
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

@profile_rescounterProfileSettingsDev_viewMyAccount_dev_M @mobile @dev @Story:#15268
Scenario: View my Account
Given I am on "/?autoQA=true"
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

@profile_rescounterProfileSettings_requiredFieds_dev @dev @Story#15268
Scenario: Required fields
Given I am on "/?autoQA=true"
And user is logged in
When I access "Settings" tab
Then I verify the required fields:
| field | element |
| Name | .QT-guestname |
| Email | .QT-guestmail |
| Phone | .QT-guestphone |
| Country | .QT-country |
| State | .QT-state |
| Address | .QT-address |
| Zip code | .QT-zipcode |
| City | .QT-city |

@profile_rescounterProfileSettingsDev_editInformation_dev_M @mobile @dev @Story#15268
Scenario: Edit information
Given I am on "/?autoQA=true"
And user is logged in
When I access "Settings" tab
Then I could edit my account informaiton

@profile_rescounterProfileSettings_requiredFieds_dev_M @mobile @dev @Story#15268
Scenario: Required fields
Given I am on "/?autoQA=true"
And user is logged in
When I access "Settings" tab
Then I verify the required fields:
| field | element |
| Name | .QT-guestname |
| Email | .QT-guestmail |
| Phone | .QT-guestphone |
| Country | .QT-country |
| State | .QT-state |
| Address | .QT-address |
| Zip code | .QT-zipcode |
| City | .QT-city |