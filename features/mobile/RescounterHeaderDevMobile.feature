#Feature for dev mobile scenarios only
Feature: Rescounter header dev mobile
In order to have a header
As a customer
I must be able to click on links

@index_rescounterHeaderDevMobile_validateLinks_dev_M @mobile @dev
Scenario: Validate links
Given I am on "/?autoQA=true&skin=current"
Then I validate links:
| element | url |
| logo | / |
| header account | #f-modal-welcome-trigger |
| menu | #f-modal-menu-trigger |
| about | /about-us/ |
| privacy | /privacy/ |
| term | /terms/ |
| faq | /faq/ |
| login | #f-header-account |

@search_rescounterHeaderDevMobile_searchHotel_dev_M @mobile @dev
Scenario: Search hotel
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I click on "search button"
Then I should see hotels

@search_rescounterHeaderDevMobile_searchWithTwoRooms_dev_M @mobile @dev
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I select 2 rooms
And I click on "search button"
Then I should be on "search" page
And I should see hotels

@search_rescounterHeaderDevMobile_searchRoomForAdultsAndKids_dev_M @mobile @dev
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I select 2 adults
And I select 2 child/children
When I select 3 as age
And I click on "search button"
Then I should be on "search" page