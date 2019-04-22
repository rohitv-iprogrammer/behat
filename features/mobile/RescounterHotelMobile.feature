#Feature for live mobile scenarios only
Feature: Rescounter hotel mobile
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_rescounterHotelDevMobile_clickToSeeRoomOptions_dev_M @mobile @dev
Scenario: Click to see room options
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I scroll to the top
And I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotelMobile_clickToSeeHotelDetails_M @mobile
Scenario: Click to see hotel details
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then I should see hotel details

@property_rescounterHotelMobile_clickToSeeHotelReviews_M @mobile
Scenario: Click to see hotel reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "GUEST REVIEW"

@property_rescounterHotelMobile_clickOnBackButton_M @dev
Scenario: Click on back button
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I click to find hotels rooms
Then I should be on "search" page
And I should see hotels

@property_rescounterHotelMobile_accessInvalidHotelPage_M @mobile
Scenario: Access invalid hotel page
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true&skin=current"
Then I should be on "error" page