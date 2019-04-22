#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter calendar dev desktop
In order select dates
As a customer
I will need a calendar to select dates

@index_layoutBlue0RescounterCalendarDevDesktop_searchDatesOnIndex_dev @dev
Scenario: Search dates on index
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page
And I should see hotels

@index_layoutBlue0RescounterCalendarDevDesktop_searchDatesOnIndexWithChekin_dev @dev
Scenario: Search dates on index with checkin
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
Then I should be on "search" page
And I should see hotels

@search_layoutBlue0RescounterCalendarDevDesktop_searchDatesOnSearch_dev @dev
Scenario: Search dates on search
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
Then I should see hotels

@search_layoutBlue0RescounterCalendarDevDesktop_searchDatesOnSearchWithChekin_dev @dev
Scenario: Search dates on search with checkin
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
Then I should be on "search" page
And I should not see hotels

@search_layoutBlue0RescounterCalendarDevDesktop_checkDatesSelectedOnSearchPage_dev @dev
Scenario: Check dates selected on search page
Given I am on "/search/?autoQA=true"
Then I should see selected valid dates at check-in and check-out
And I should see hotels

@property_layoutBlue0RescounterCalendarDevDesktop_searchWithNewDates_dev @dev @SmokeRCDevDesktop
Scenario: Search with new dates
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I select checkin and checkout dates
Then I should be on "hotel" page

@property_layoutBlue0RescounterCalendarDevDesktop_searchDatesOnHotels2_dev @dev @SmokeRCDevDesktop
Scenario: Search dates on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I select checkin and checkout dates
And I click on "see rooms"
Then I should see "rates"