#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter home dev
In order I am on home
As a customer
I must be able interact with the page 

@index_rescounterHomeDev_goToSearchPage_dev @dev
Scenario: Go to search page
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDev_validateLinks_dev @dev @Story:#15094
Scenario: Validate links
Given I am on "/?autoQA=true&skin=current"
When I scroll to the end of page
Then I validate "footer" links:
| element | url |
| .QT-dealday | https://php7.dev.reservationcounter.com/search/ |
| .QT-nearme | https://php7.dev.reservationcounter.com/search/ |
| .QT-top10 | https://php7.dev.reservationcounter.com/search/ |
| .QT-travelbucks | https://php7.dev.reservationcounter.com/search/ |

@index_rescounterHomeDev_searchWithTwoRooms_dev @dev
Scenario: Search with two rooms
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I click on "guests"
And I select "2" rooms
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDev_searchRoomForAdultsAndKids_dev @dev
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDev_goToSearchPage_dev_M @mobile @dev
Scenario: Go to search page
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDev_validateLinks_dev_M @mobile @dev @StoryM:#15094
Scenario: Validate links
Given I am on "/?autoQA=true&skin=current"
When I scroll to the end of page
Then I validate "footer" links:
| element | url |
| .QT-dealday | https://php7.dev.reservationcounter.com/search/ |
| .QT-nearme | https://php7.dev.reservationcounter.com/search/ |
| .QT-top10 | https://php7.dev.reservationcounter.com/search/ |
| .QT-travelbucks | https://php7.dev.reservationcounter.com/search/ |

@index_rescounterHomeDev_searchWithTwoRooms_dev_M @mobile @dev
Scenario: Search with two rooms
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I click on capacity field
And I select "2" rooms
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDev_searchRoomForAdultsAndKids_dev_M @mobile @dev
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select "1" child/children
And I select "3" as age
And I click on "search button"
Then I should be on "search" page