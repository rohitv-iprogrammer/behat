#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter order by dev
In order to find a hotel more suitable with my needs
As a customer
I must be able to order hotels by price, hotel class, guest ratings and star rating

@search_rescounterOrderByDev_OrderByPriceMinMax_dev @dev @Story:#15231
Scenario: Order by price min - max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I select to order by "Price (Low to High)"
Then prices should be ordered from the lowest to the most expensive

@search_rescounterOrderByDev_OrderByPriceMaxMin_dev @dev @Story:#15231
Scenario: Order by price max - min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I select to order by "Price (High to Low)"
Then prices should be ordered from the most expensive the lowest

@search_rescounterOrderByDev_OrderByPriceMinMax_dev_M @mobile @dev @Story:#15231
Scenario: Order by price min - max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I select to order by "Price (Low to High)"
Then prices should be ordered from the lowest to the most expensive

@search_rescounterOrderByDev_OrderByPriceMaxMin_dev_M @mobile @dev @Story:#15231
Scenario: Order by price max - min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I select to order by "Price (High to Low)"
Then prices should be ordered from the most expensive the lowest