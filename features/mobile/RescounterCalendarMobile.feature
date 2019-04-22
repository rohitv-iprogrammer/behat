#Feature for live mobile scenarios only
Feature: Rescounter calendar mobile
In order select dates
As a customer
I will need a calendar to select dates

@index_rescounterCalendarMobile_searchDatesOnHotels2_dev_M @mobile
Scenario: Search dates on hotels2
Given I am on "/hotels2/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true&skin=current"
When I select checkin and checkout dates
Then I should see a rates

@property_rescounterCalendarMobile_selectOnlyCheckinDate_M @mobile
Scenario: Select only checkin date
Given I am on "/hotels2/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true&skin=current"
When I scroll to the button
And I click on "hotel search"
And I select only checkin field
Then I should see a rates
And I should see selected valid dates at check-in and check-out

@index_rescounterCalendarMobile_searchDatesOnIndex_M @mobile @SmokeRCMobile
Scenario: Search dates on index
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterCalendarMobile_searchDatesOnIndexWithCheckin_M @mobile
Scenario: Search dates on index with checkin
Given I am on "/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I open the calendar
And I select only checkin field
And I click on "search button"
Then I should see hotels

@search_rescounterCalendarMobile_searchDatesOnSearch_M @mobile
Scenario: Search dates on search
Given I am on "/search/?destination=Las%20Vegas%2C%20NV%2C%20EUA&latitude=36.1699412&longitude=-115.13982959999998&autoQA=true&skin=current"
When I open the calendar
And I select checkin and checkout dates
Then I should see hotels

@search_rescounterCalendarMobile_searchDatesOnSearchWithCheckin_M @mobile
Scenario: Search dates on search with checkin
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I click on "check dates"
And I select only checkin field 
Then I should see hotels

@property_rescounterCalendarMobile_searchDatesOnHotel_M @mobile @hotel
Scenario: Search dates on hotel
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
When I click on "calendar"
And I select only checkin date
And I click on "search button"
Then I should be on "hotel" page
And I should see a rates

@search_rescounterCalendarMobile_checkDatesSelectedOnSearchPage_M @mobile
Scenario: Check dates selected on search page
Given I am on "/search/?autoQA=true&skin=current"
Then I should see selected valid dates at check-in and check-out