#Feature for live desktop scenarios only
Feature: Rescounter hotel desktop
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_rescounterHotelDesktop_clickToSeeRoomOptions
Scenario: Click to see room options
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I scroll to the top
And I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotelDesktop_clickToSeeHotelDetails
Scenario: Click to see hotel details
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then I should see hotel details

@property_rescounterHotelDesktop_clickToSeeHotelReviews
Scenario: Click to see hotel reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterHotelDesktop_clickToSeeRoomOptionsOnHotels2
Scenario: Click to see room options on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotelDesktop_clickToSeeHotelDetailsOnHotels2
Scenario: Click to see hotel details on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then I should see hotel details

@property_rescounterHotelDesktop_clickToSeeHotelReviewsOnHotels2
Scenario: Click to see hotel reviews on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterHotelDevDesktop_CheckAllAminityIconsOnHotels2
Scenario: Click to see hotel amenities icon on hotels 2
Given I am on "/hotels2/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
#And I select checkin and checkout dates
When I click on "amenities"
Then I should see icons for all amenities

@property_rescounterHotelDesktop_clickToSeeeHotelReviewsFilterOnHotels2
Scenario: Click to see hotel reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"

@property_rescounterHotelDesktop_accessInvalidHotelPage
Scenario: Access invalid hotel page
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true&skin=current"
Then I should be on "error" page

@property_rescounterHotelDev_backFromTheCheckoutPage
Scenario: Back from the checkout page
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I go to book page
And I go back to the previous page
Then I should see rates