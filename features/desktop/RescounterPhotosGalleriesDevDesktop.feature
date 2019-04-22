#Feature for dev desktop scenarios only
Feature: Rescounter photos galleries dev desktop
In order to visualize how is the room
As a customer
I must be able see photos

@property_rescounterPhotosGalleryDevDesktop_validateImageGalleryPhotos_dev @dev @Story:#16997
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click to open the gallery
Then I should see a gallery

@property_rescounterPhotosGalleryDevDesktop_validateImageGalleryPhotosOnHotels2_dev @dev @hotels2 @Story:#16997
Scenario: Validate image gallery photos on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "hotel gallery"
Then I should see a gallery

@property_rescounterPhotosGalleryDevDesktop_seeAllImages_dev @dev @Story:#16997
Scenario: See all images
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click to open the gallery
Then I should see all gallery

@property_rescounterPhotosGalleryDevDesktop_clickOnHeroImage_dev @dev @Story:#17541
Scenario: Click on hero image
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "hotel hero image"
Then hero image should be displayed on full screen