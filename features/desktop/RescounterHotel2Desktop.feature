#Feature for desktop scenarios
Feature: Rescounter hotel 2 desktop
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_rescounterHotelDesktop_clickToSeeRoomOptionsOnHotels2
Scenario: Click to see room options on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true$skin=current"
When I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotelDesktop_clickToSeeHotelDetailsOnHotels2
Scenario: Click to see hotel details on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true$skin=current"
Then I should see hotel details

@property_rescounterHotelDesktop_clickToSeeHotelReviewsOnHotels2
Scenario: Click to see hotel reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true$skin=current"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterHotelDesktop_CheckAllAminityIconsOnHotels2
Scenario: Click to see hotel amenities icon on hotels 2
Given I am on "/hotels2/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true$skin=current"
#And I select checkin and checkout dates
When I click on "amenities"
Then I should see icons for all amenities

@property_rescounterHotelDesktop_clickToSeeeHotelReviewsFilterOnHotels2
Scenario: Click to see hotel reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true$skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"

@property_rescounterHotelDesktop_HotelReviewsFilter2_dev
Scenario: Click to see hotel reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true$skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Oldest to Newest" the reviews
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"