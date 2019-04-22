#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter calendar dev
In order select dates
As a customer
I will need a calendar to select dates

@index_rescounterCalendarDev_searchDatesOnIndex_dev @dev @Story:#16412
Scenario: Search dates on index
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page
And I should see hotels

@index_rescounterCalendarDev_searchDatesOnIndex_dev @dev @Story:#16412
Scenario: Search dates on index
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "findrooms"
Then I should be on "search" page
And I should see a "Hotels Found"

@index_rescounterCalendarDev_searchDatesOnIndex_dev @dev @Story:#17069
Scenario: Search dates on index
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
Then I should not be on "search" page
And I should not see a "rates"

@index_rescounterCalendarDev_searchDatesOnIndexWithChekin_dev @dev @Story:#17216
Scenario: Search dates on index with checkin
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
Then I should be on "search" page
And I should see hotels

@search_rescounterCalendarDev_searchDatesOnSearch_dev @dev @Story:#16412
Scenario: Search dates on index - Failing2
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin field
Then I should be on "index" page
And I should not see hotels

@index_rescounterCalendarDec_searchDatesOnIndexFailing1_dev @dev @Story:16760
Scenario: Search dates on index - Failing1
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I should not see "rates"

@search_rescounterCalendarDev_searchDatesOnSearch_dev @dev @Story:16760
Scenario: Search dates on search
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
Then I should see "Hotels Found"

@search_rescounterCalendarDev_searchDatesOnSearch_dev @dev @Story:#16412
Scenario: Search dates on search - Failing 1
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin field
Then I should not see "rates"

@search_rescounterCalendarDev_searchDatesOnSearch_dev @dev @Story:17216
Scenario: Search dates on search
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
When I select checkin and checkout dates
Then I should see hotels

@search_rescounterCalendarDev_checkDatesSelectedOnSearchPage_dev @dev @Story:17216
Scenario: Check dates selected on search page
Given I am on "/search/?autoQA=true"
Then I should see selected valid dates at check-in and check-out
And I should see hotels

@property_rescounterCalendarDev_searchDatesOnHotel_dev @dev @Story:#16412
Scenario: Search dates on hotel
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I select checkin and checkout dates
And I click on "See Rooms"
Then I should see "rates"

@property_rescounterCalendarDev_searchDatesOnHotelFailing1_dev @dev @Story:#16412
Scenario: Search dates on hotel - Failing 1
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I select only checkin field
And I click on "search button"
Then I should not see "rates"

@property_rescounterCalendarDev_searchDatesOnHotels2_dev @dev
Scenario: Search dates on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I select checkin and checkout dates
And I click on "see rooms"
Then I should see "rates"

@property_rescounterCalendarDev_searchDatesOnHotels2Failing115_dev @dev @Story:#16412
Scenario: Search dates on hotels2 - Failing 1
Given I am on "/hotels2/las-vegas-nv/el-cortez-hotel-and-casino-las-vegas-nv/6038d17/?autoQA=true"
When I select only checkin field
And I click on "search button"
Then I should not see "rates"

@index_rescounterCalendarDev_searchDatesOnHotels2_dev_M @dev @mobile
Scenario: Search dates on hotels2
Given I am on "/hotels2/61253b3/the-d-las-vegas-las-vegas-nv/?autoQA=true"
When I select checkin and checkout dates
Then I should see a rates

@property_rescounterCalendarDev_searchDatesOnHotel2Failing1_dev_M @dev @mobile @Story:#16309
Scenario: Search dates on hotel2 - Failing 1
Given I am on "/hotels2/61253b3/the-d-las-vegas-las-vegas-nv/?autoQA=true"
When I select only checkin field
Then I should not see rates

@index_rescounterCalendarDev_searchDatesOnIndex_dev_M @mobile @dev @StoryM:#17216M
Scenario: Search dates on index
Given I am on "/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
And I click on "search button"
Then I should be on "search" page

@index_rescounterCalendarDev_searchDatesOnIndexWithCheckin_dev_M @mobile @dev @StoryM:#17216
Scenario: Search dates on index with checkin
Given I am on "/?autoQA=true"
And I select as destination "Las Vegas, NV, United States"
And I select only checkin field
Then I should not see "rates"

@search_rescounterCalendarDev_searchDatesOnSearch_dev_M @mobile @dev @Story:#16412
Scenario: Search dates on search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true"
When I select checkin and checkout dates
Then I should see "rates"

@search_rescounterCalendarDev_searchDatesOnSearchWithCheckin_dev_M @mobile @dev @Story:#16412
Scenario: Search dates on search with checkin
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin field 
Then I should be on "search" page
And I should see hotels

@property_rescounterCalendarDev_searchDatesOnHotel_dev_M @mobile @dev @hotel @Story:#16412
Scenario: Search dates on hotel
Given I am on "/"
When I select as destination "Las Vegas, NV, United States"
And I select only checkin date
And I click on "search button"
Then I should be on "search" page
And I should see hotels

@search_rescounterCalendarDev_checkDatesSelectedOnSearchPage_dev_M @dev @mobile @StoryM:#17216
Scenario: Check dates selected on search page
Given I am on "/search/?autoQA=true"
Then I should see selected valid dates at check-in and check-out

@search_rescounterCalendarDev_searchDatesOnSearch_dev_M @dev @mobile @StoryM:#17216
Scenario: Search dates on search
Given I am on "/search/?autoQA=true"
When I click on "select dates icon"
And I select as destination "Las Vegas, NV, United States"
And I select checkin and checkout dates
Then I should see hotels

@property_rescounterCalendarDev_searchDatesOnHotel_dev_M @dev @mobile @StoryM:#17216 @hotel
Scenario: Search dates on hotel
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I open the calendar
And I select checkin and checkout dates
Then I should see a rates

@property_rescounterCalendarDev_searchDatesOnHotelFailing1_dev_M @mobile @dev @hotel
Scenario: Search dates on hotel - Failing 1
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I open the calendar
And I select only checkin date
Then I should not see rates

@property_rescounterCalendarDev_searchDatesOnHotelFailing1_dev_M @mobile @dev @hotel @Story:#16412
Scenario: Search dates on hotel - bug
Given I am on "/hotels2/las-vegas-nv/golden-gate-hotel-and-casino-las-vegas-nv/6137563/?autoQA=true"
When I select only checkin field
Then I should see a rates