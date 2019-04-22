#Feature for dev mobile scenarios only
Feature: Rescounter hotel dev mobile
In order I am on hotel page
As a costumer
I must be able to see a hotel and room information

@property_rescounterHotelDevMobile_clickToSeeRoomOptions_dev_M @mobile @dev @StoryM:17980
Scenario: Click to see room options
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I scroll to the top
And I select checkin and checkout dates
Then I should see a rates

@property_rescounterHotelDevMobile_clickToSeeHotelDetails_dev_M @mobile @dev @StoryM:17980
Scenario: Click to see hotel details
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then I should see hotel details

@property_rescounterHotelDevMobile_clickToSeeHotelReviews_dev_M @mobile @dev @StoryM:17980
Scenario: Click to see hotel reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "GUEST REVIEW"

@property_rescounterHotelDevMobile_clickOnBackButton_dev_M @dev @mobile @StoryM:17980
Scenario: Click on back button
Given I am on "/search/?autoQA=true&skin=current"
When I click on "calendar"
And I select as destination "Las Vegas, NV, United States"
And I click to find hotels rooms
Then I should be on "search" page
And I should see hotels

@property_rescounterHotelDevMobile_accessInvalidHotelPage_dev_M @mobile @dev @StoryM:17980
Scenario: Access invalid hotel page
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true&skin=current"
Then I should be on "error" page