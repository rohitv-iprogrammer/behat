#Feature for desktop scenarios only [layout blue0]
Feature: Rescounter home desktop
In order I am on home
As a customer
I must be able interact with the page 

@index_layoutBlue0RescounterHomeDesktop_goToSearchPage
Scenario: Go to search page
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_layoutBlue0RescounterHomeDesktop_searchWithTwoRooms
Scenario: Search with two rooms
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I click on "guests"
And I select "2" rooms
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_layoutBlue0RescounterHomeDesktop_searchRoomForAdultsAndKids
Scenario: Search room for adults and kids
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page