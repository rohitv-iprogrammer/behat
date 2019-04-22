#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter photos galleries dev
In order to visualize how is the room
As a customer
I must be able see photos

@property_rescounterPhotosGalleryDev_validateImageGalleryPhotos_dev @dev @Story:#16997
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click to open the calendar
Then I should see a gallery

@property_rescounterPhotosGalleryDev_validateImageGalleryPhotosOnHotels2_dev @dev @hotels2 @Story:#16997
Scenario: Validate image gallery photos on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "hotel gallery"
Then I should see a gallery

@property_rescounterPhotosGalleryDev_seeAllImages_dev @dev @Story:#16997
Scenario: See all images
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click to open the calendar
Then I should see all gallery

@property_rescounterPhotosGalleryDev_clickOnHeroImage_dev @dev @Story:#17541
Scenario: Click on hero image
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "hotel hero image"
Then hero image should be displayed on full screen

@property_rescounterPhotosGalleryDev_validateImageGalleryPhotos_dev_M @mobile @dev @Story:15111 @StoryM:#16997
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click to open the calendar
Then I should see a gallery

@property_rescounterPhotosGalleryDev_validateImageGalleryPhotosOnHotels2_dev_M @mobile @dev @Story:15111 @hotels2 @StoryM:#16997
Scenario: Validate image gallery photos on hotels 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click to open the calendar
Then I should see a gallery

@property_rescounterPhotosGalleryDev_seeAllImages_dev_M @mobile @dev @StoryM:#16997
Scenario: See all images
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click to open the calendar
Then I should see all gallery

@property_rescounterPhotosGalleryDev_clickOnHeroImage_dev_M @mobile @dev @StoryM:#17541
Scenario: Click on hero image
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "hotel hero image"
Then hero image should be displayed on full screen