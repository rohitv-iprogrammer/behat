#Feature for dev desktop scenarios only
Feature: Rescounter search dev desktop
In order that to find a hotel
As a customer
I must be able filter the search

@search_rescounterSearchDevDesktop_searchWithHotelName_dev @dev
Scenario: Search with hotel name
Given I am on "/search/?autoQA=true"
When I click on "more filters"
And I search for hotel "Regal Inn Coffeyville"
Then I should see hotels
And I should see text matching "Oasis at Gold Spike"

@search_rescounterSearchDevDesktop_filteringByPriceLowMax_dev @dev @Story:#15231 @filterrc
Scenario: Filtering by price low max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I select min price to be 100$ and max price to be 200$
Then no price should be "higher" than 200$

@search_rescounterSearchDevDesktop_filteringByPriceHighMin_dev @dev @Story:#15231 @filterrc
Scenario: Filtering by price high min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I select min price to be 100$ and max price to be 200$
Then no price should be "lower" than 100$

@search_rescounterSearchDevDesktop_filteringByHotelClass_dev @dev @Story:#15231 @filterrc
Scenario: Filtering by hotel class
Given I am on "/search/?autoQA=true&skin=current"
When I select 2 stars
Then there should be no hotels with more than 2 stars