#Feature for dev mobile scenarios only
Feature: Rescounter photos galleries dev mobile
In order to visualize how is the room
As a customer
I must be able see photos

@property_rescounterPhotosGalleryDevMobile_validateImageGalleryPhotos_dev_M @mobile @dev
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "view photos"
Then I should see a gallery