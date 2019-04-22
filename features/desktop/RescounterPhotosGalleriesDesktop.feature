#Feature for live desktop scenarios only
Feature: Rescounter photos galleries desktop
In order to visualize how is the room
As a customer
I must be able see photos

@property_rescounterPhotosGalleryDesktop_validateImageGalleryPhotos
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "hotel gallery"
Then I should see a gallery

@property_rescounterPhotosGalleryDesktop_validateImageGalleryPhotosOnHotels2
Scenario: Validate image gallery photos on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "hotel gallery"
Then I should see a gallery

@property_rescounterPhotosGalleryDev_seeAllImages
Scenario: See all images
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "hotel gallery"
Then I should see all gallery

@property_rescounterPhotosGalleryDev_seeAllImages_dev @dev
Scenario: See all images
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click to open the calendar
Then I should see all gallery