#Feature for live desktop scenarios only
Feature: Rescounter search desktop
In order that to find a hotel
As a customer
I must be able filter the search

@search_rescounterSearchDesktop_searchWithHotelName
Scenario: Search with hotel name
Given I am on "/search/?autoQA=true&skin=current"
When I click on "more filters"
And I search for hotel "Regal Inn Coffeyville"
Then I should see a rates
And I should see text matching "Sleep Inn And Suites Coffeyville"

@search_rescounterSearchDesktop_filteringByPriceLowMax @filterrc
Scenario: Filtering by price low max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I select min price to be 100$ and max price to be 200$
Then no price should be "higher" than 200$

@search_rescounterSearchDesktop_filteringByPriceHighMin @filterrc
Scenario: Filtering by price high min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos&latitude=36.1699412&longitude=-115.13982959999998/?autoQA=true&skin=current"
When I select min price to be 100$ and max price to be 200$
Then no price should be "lower" than 100$

@search_rescounterSearchDesktop_filteringByHotelClass @filterrc
Scenario: Filtering by hotel class
Given I am on "/search/?autoQA=true&skin=current"
When I select 2 stars
Then there should be no hotels with more than 2 stars