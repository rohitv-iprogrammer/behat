#Feature for live desktop scenarios only[layout blue0]
Feature: Layout blue0 rescounter map desktop
In order to visualize and check hotel informations later
As a customer
I must be able to view map

@property_layoutBlue0RescounterMapDesktop_viewOnMap
Scenario: View on map
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "map view"
Then I should see a open map

@property_layoutBlue0RescounterMapDesktop_viewOnMapOnHotels2
Scenario: View on map on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Location" on hotels2
And I click on "map view"
Then I should see a open map