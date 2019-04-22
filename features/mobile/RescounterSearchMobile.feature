#Feature for live mobile scenarios only
Feature: Rescounter search mobile
In order that to find a hotel
As a customer
I must be able filter the search

@search_rescounterSearchMobile_searchWithHotelName_M @mobile
Scenario: Search with hotel name
Given I am on "/search/?autoQA=true&skin=current"
When I click on "more filters"
And I search for hotel "Regal Inn Coffeyville"
Then I should see hotels
And I should see text matching "Oasis at Gold Spike"

@search_rescounterSearchMobile_filteringByPriceLowMax_M @mobile @filterrc
Scenario: Filtering by price low max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I click on "more filters"
And I select min price to be 100$ and max price to be 200$
And I click on "search button"
Then no price should be "higher" than 200$

@search_rescounterSearchMobile_filteringByPriceHighMin_M @mobile @filterrc
Scenario: Filtering by price high min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I click on "more filters"
And I select min price to be 100$ and max price to be 200$
And I click on "search button"
Then no price should be "lower" than 100$

@search_rescounterSearchMobile_filteringByHotelClass_M @mobile @filterrc
Scenario: Filtering by hotel class
Given I am on "/search/?autoQA=true&skin=current"
When I click on "more filters"
And I select 2 stars
And I click on "search button"
Then there should be no hotels with more than 2 stars