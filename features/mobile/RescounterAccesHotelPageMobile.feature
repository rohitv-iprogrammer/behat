#Feature for mobile scenarios only
Feature: Rescounter access hotel page mobile

@search_rescounterAccessHotelPageMobile_accessHotelPage_M @mobile
Scenario: Access hotel page
Given I am on "/search/?autoQA=true&skin=current"
When I click on "hotel button"
Then I should be on "hotel" page