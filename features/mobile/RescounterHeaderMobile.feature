#Feature for live mobile scenarios only
Feature: Rescounter header mobile
In order to have a header
As a customer
I must be able to click on links

@index_rescounterHeaderMobile_validateLinks_M @mobile
Scenario: Validate links
Given I am on "/?autoQA=true&skin=current"
Then I validate links:
| element | url |
| logo | / |
| privacy | /privacy/ |
| terms | /terms/ |
| reservation | /reservation/ |
| login | #f-header-account |

@search_rescounterHeaderMobile_searchHotel_M @mobile
Scenario: Search hotel
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I click to find hotels rooms
Then I should see hotels

@search_rescounterHeaderMobile_searchWithTwoRooms_M @mobile
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I select 2 rooms
And I click to find hotels rooms
Then I should be on "search" page
And I should see hotels

@search_rescounterHeaderMobile_searchRoomForAdultsAndKids_M @mobile
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I select 2 adults
And I select 2 child/children
When I select 3 as age
And I click to find hotels rooms
Then I should be on "search" page