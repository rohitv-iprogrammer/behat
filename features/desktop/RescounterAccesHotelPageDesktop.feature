#Feature for live desktop scenarios only
Feature: Rescounter access hotel page desktop

@search_rescounterAccessHotelPageDesktop_accessHotelPage
Scenario: Access hotel page
Given I am on "/search/?autoQA=true&skin=current"
When I click on "hotel button"
Then I should be on "hotel" page