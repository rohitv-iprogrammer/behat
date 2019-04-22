#Feature for dev mobile scenarios only
Feature: Rescounter map dev mobile
In order to visualize and check hotel informations later
As a customer
I must be able to view map

@property_rescounterMapDevMobile_viewOnMap_dev_M @mobile @dev
Scenario: View on map
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "mobile map"
Then I should see a open map

@property_rescounterMapDevMobile_viewOnMapOnHotels2_M @mobile @hotels2
Scenario: View on map on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Location" on hotels2
And I click on "map view"
Then I should see a open map