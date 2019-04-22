#Feature for dev desktop scenarios only
Feature: Rescounter pagination dev desktop
In order to be able to compare many hotels
as a customer
I should be able to infinite scroll on search page

@search_rescounterPaginationDevDesktop_searchPagePagination_dev @dev
Scenario: Search page pagination
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I scroll to the bottom of the page
Then I scroll to see more hotels