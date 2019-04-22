#Feature for dev mobile scenarios only
Feature: Rescounter home dev mobile
In order I am on home
As a customer
I must be able interact with the page 

@index_rescounterHomeDevMobile_goToSearchPage_dev_M @mobile @dev
Scenario: Go to search page
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDevMobile_searchWithTwoRooms_dev_M @mobile @dev
Scenario: Search with two rooms
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 2 rooms
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeDevMobile_searchRoomForAdultsAndKids_dev_M @mobile @dev
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page