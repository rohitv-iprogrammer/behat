#Feature for dev desktop scenarios only [layout blue0]
Feature: Rescounter home dev desktop
In order I am on home
As a customer
I must be able interact with the page 

@index_layoutBlue0RescounterHomeDevDesktop_goToSearchPage_dev @dev
Scenario: Go to search page
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_layoutBlue0RescounterHomeDevDesktop_searchWithTwoRooms_dev @dev
Scenario: Search with two rooms
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I click on "capacity field"
And I select 2 rooms
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_layoutBlue0RescounterHomeDevDesktop_searchRoomForAdultsAndKids_dev @dev
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page