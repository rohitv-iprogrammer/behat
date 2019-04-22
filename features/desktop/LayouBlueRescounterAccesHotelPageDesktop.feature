#Feature for live desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter access hotel page desktop

@search_layoutBlue0RescounterAccessHotelPageDesktop_accessHotelPage
Scenario: Access hotel page
Given I am on "/search/?autoQA=true"
When I click on "hotel button"
Then I should be on "hotel" page