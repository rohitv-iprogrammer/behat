#Feature for desktop scenarios [layout blue0]
Feature: Rescounter hotel 2 desktop
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_layoutBlue0RescounterHotelDesktop_clickToSeeRoomOptionsOnHotels2
Scenario: Click to see room options on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select checkin and checkout dates
Then I should see a rates

@property_layoutBlue0RescounterHotelDesktop_clickToSeeHotelDetailsOnHotels2
Scenario: Click to see hotel details on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
Then I should see hotel details

@property_layoutBlue0RescounterHotelDesktop_clickToSeeHotelReviewsOnHotels2
Scenario: Click to see hotel reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_layoutBlue0RescounterHotelDesktop_CheckAllAminityIconsOnHotels2
Scenario: Click to see hotel amenities icon on hotels 2
Given I am on "/hotels2/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
#And I select checkin and checkout dates
When I click on "amenities"
Then I should see icons for all amenities

@property_layoutBlue0RescounterHotelDesktop_clickToSeeeHotelReviewsFilterOnHotels2
Scenario: Click to see hotel reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"

@property_layoutBlue0RescounterHotelDesktop_HotelReviewsFilter2_dev
Scenario: Click to see hotel reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Oldest to Newest" the reviews
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"