#Feature for dev desktop scenarios only
Feature: Rescounter calendar dev desktop
In order select dates
As a customer
I will need a calendar to select dates

@index_rescounterCalendarDevDesktop_searchDatesOnIndex_dev @dev @Story:#16412
Scenario: Search dates on index
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page
And I should see hotels

@index_rescounterCalendarDevDesktop_searchDatesOnIndexWithChekin_dev @dev @Story:#17216
Scenario: Search dates on index with checkin
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
Then I should be on "search" page
And I should see hotels

@search_rescounterCalendarDevDesktop_searchDatesOnSearch_dev @dev @Story:17216
Scenario: Search dates on search
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
Then I should see hotels

@search_rescounterCalendarDevDesktop_searchDatesOnSearchWithChekin_dev @dev @Story:#16412
Scenario: Search dates on search with checkin
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
Then I should be on "search" page
And I should see hotels

@search_rescounterCalendarDevDesktop_checkDatesSelectedOnSearchPage_dev @dev @Story:17216
Scenario: Check dates selected on search page
Given I am on "/search/?autoQA=true&skin=current"
Then I should see selected valid dates at check-in and check-out
And I should see hotels

@property_rescounterCalendarDevDesktop_searchWithNewDates_dev @dev @SmokeRCDevDesktop
Scenario: Search with new dates
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I select checkin and checkout dates
Then I should be on "hotel" page

@property_rescounterCalendarDevDesktop_searchDatesOnHotels2_dev @dev @SmokeRCDevDesktop
Scenario: Search dates on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true&skin=current"
When I select checkin and checkout dates
And I click on "see rooms"
Then I should see "rates"