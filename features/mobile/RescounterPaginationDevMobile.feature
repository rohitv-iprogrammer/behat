#Feature for dev mobile scenarios only
Feature: Rescounter pagination dev mobile
In order to be able to compare many hotels
as a customer
I should be able to infinite scroll on search page

@search_rescounterPaginationDevMobile_searchPagePagination_dev_M @dev @mobile
Scenario: Search page pagination
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
Then I scroll to see more hotels