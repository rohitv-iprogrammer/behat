#Feature for dev mobile scenarios only
Feature: Rescounter access hotel page dev mobile

@search_rescounterAccessHotelPageDevMobile_accessHotelPage_dev_M @dev @mobile
Scenario: Access hotel page
Given I am on "/search/?autoQA=true&skin=current"
When I click on "hotel button"
Then I should be on "hotel" page