#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter hotel images dev desktop
In order to visualize and check hotel informations later
As a customer
I must be able to do such action after hovering over a hotel image

@search_layoutBlue0RescounterHotelImagesDevDesktop_saveHotel_dev @dev
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on save button
Then I should see "This hotel will be saved in your profile."

@search_layoutBlue0RescounterHotelImagesDevDesktop_hotelGallery_dev @dev
Scenario: Hotel gallery
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on "hotel preview"
Then I should see a gallery