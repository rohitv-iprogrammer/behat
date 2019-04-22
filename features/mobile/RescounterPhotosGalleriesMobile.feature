#Feature for live mobile scenarios only
Feature: Rescounter photos galleries mobile
In order to visualize how is the room
As a customer
I must be able see photos

@property_rescounterPhotosGalleryMobile_validateImageGalleryPhotos_M @mobile
Scenario: Validate image gallery photos
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "view photos"
Then I should see a gallery