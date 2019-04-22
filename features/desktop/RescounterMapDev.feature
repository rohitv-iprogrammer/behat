#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter map dev
In order to visualize and check hotel informations later
As a customer
I must be able to view map

@property_rescounterMapDev_viewOnMap_dev @dev @Story:15094
Scenario: View on map
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "map view"
Then I should see a open map

@property_rescounterMapDev_viewOnMapOnHotels2_dev @dev @hotels2
Scenario: View on map on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Location" on hotels2
And I click on "map view"
Then I should see a open map

@property_rescounterMapDev_viewOnMap_dev_M @mobile @dev
Scenario: View on map
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "map view"
Then I should see a open map

@property_rescounterMapDev_viewOnMapOnHotels2_dev_M @mobile @dev @hotels2
Scenario: View on map on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Location" on hotels2
And I click on "map view"
Then I should see a open map