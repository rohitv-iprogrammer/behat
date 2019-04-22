#Feature for live mobile scenarios only
Feature: Rescounter order by mobile
In order to find a hotel more suitable with my needs
As a customer
I must be able to order hotels by price, hotel class, guest ratings and star rating

@search_rescounterOrderByMobile_OrderByPriceMinMax_M @mobile
Scenario: Order by price min - max
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I select to order by "Price (Low to High)"
Then prices should be ordered from the lowest to the most expensive

@search_rescounterOrderByMobile_OrderByPriceMaxMin_M @mobile
Scenario: Order by price max - min
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I select to order by "Price (High to Low)"
Then prices should be ordered from the most expensive the lowest