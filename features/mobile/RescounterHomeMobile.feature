#Feature for live mobile scenarios only
Feature: Rescounter home mobile
In order I am on home
As a customer
I must be able interact with the page 

@index_rescounterHomeMobile_goToSearchPage_M @mobile
Scenario: Go to search page
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeMobile_searchWithTwoRooms_M @mobile
Scenario: Search with two rooms
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 2 rooms
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterHomeMobile_searchRoomForAdultsAndKids_M @mobile
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page