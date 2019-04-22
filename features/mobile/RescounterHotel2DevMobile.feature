#Feature for dev mobile scenarios only
Feature: Rescounter hotel2 dev mobile
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_rescounterHotel2DevMobile_clickToSeeHotelReviews_dev_M @mobile @dev
Scenario: Click to see hotel reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterHotel2DevMobile_CheckAllAminityIcons_dev_M @dev @mobile
Scenario: Click to see hotel amenities icon
Given I am on "/hotels2/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
#And I select checkin and checkout dates
When I click on "amenities"
Then I should see icons for all amenities

@property_rescounterHotel2DevMobile_clickToSeeRoomOptionsOnHotels2_dev_M @mobile @dev
Scenario: Click to see room options on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb?autoQA=true&skin=current"
When I open the calendar to select dates
And I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotel2DevMobile_showMoreReviewsOnHotels2_dev_M @mobile @dev
Scenario: Show more reviews on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb?autoQA=true&skin=current"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"
Then I should see more than 10 review items for the hotel2