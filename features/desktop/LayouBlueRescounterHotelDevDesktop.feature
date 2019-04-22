#Feature for dev desktop scenarios [layout blue0]
Feature: Layout blue0 rescounter hotel dev desktop
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_layoutBlue0RescounterHotelDevDesktop_clickToSeeRoomOptions_dev @dev
Scenario: Click to see room options
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I scroll to the top
And I select checkin and checkout dates
Then I should see a rates

@property_layoutBlue0RescounterHotelDevDesktop_clickToSeeHotelDetails_dev @dev
Scenario: Click to see hotel details
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
Then I should see hotel details

@property_layoutBlue0RescounterHotelDevDesktop_clickToSeeHotelReviews_dev @dev
Scenario: Click to see hotel reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_layoutBlue0RescounterHotelDevDesktop_accessInvalidHotelPage_dev @dev
Scenario: Access invalid hotel page
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true"
Then I should be on "error" page

@property_layoutBlue0RescounterHotelDevDesktop_backFromTheCheckoutPage_dev @dev
Scenario: Back from the checkout page
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"

@property_layoutBlue0RescounterHotelDevDesktop_clickToSeeMoreAmenities_dev @dev
Scenario: Click to see more amenities
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select checkin and checkout dates
And I click on "hotel details"
And I click on "amenities more"
Then modal amenities should be displayed