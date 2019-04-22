#Feature for dev desktop scenarios only
Feature: Rescounter header dev desktop
In order to have a header
As a customer
I must be able to click on links

@index_rescounterHeaderDevDesktop_validateLinks_dev @dev @Story:#15094
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

@search_rescounterHeaderDevDesktop_searchHotel_dev @dev
Scenario: Search hotel
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
Then I should see hotels

@search_rescounterHeaderDevDesktop_searchWithTwoRooms_dev @dev
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I click on "capacity field"
And I select "2" rooms
And I click on "search button"
Then I should be on "search" page

@search_rescounterHeaderDevDesktop_searchRoomForAdultsAndKids_dev @dev
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I click on "capacity field"
And I select "1" child/children
And I select "3" as age
And I click on "search button"
Then I should be on "search" page