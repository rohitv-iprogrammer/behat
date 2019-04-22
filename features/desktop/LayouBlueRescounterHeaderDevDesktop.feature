#Feature for live desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter header desktop
In order to have a header
As a customer
I must be able to click on links

@search_layoutBlue0RescounterHeaderDevDesktop_searchHotel_dev @dev
Scenario: Search hotel
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
Then I should see hotels

@search_layoutBlue0RescounterHeaderDevDesktop_searchWithTwoRooms_dev @dev
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I click on "capacity field"
And I select 2 rooms
And I click on "search button"
Then I should be on "search" page

@search_layoutBlue0RescounterHeaderDevDesktop_searchRoomForAdultsAndKids_dev @dev
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I click on "search button"
Then I should be on "search" page