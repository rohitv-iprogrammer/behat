#Feature for dev desktop scenarios only
Feature: Rescounter access hotel page dev desktop

@search_rescounterAccessHotelPageDevDesktop_accessHotelPage_dev @dev
Scenario: Access hotel page
Given I am on "/search/?autoQA=true&skin=current"
When I click on "hotel button"
Then I should be on "hotel" page