#Feature for dev desktop scenarios only
Feature: Rescounter hotel images dev desktop
In order to visualize and check hotel informations later
As a customer
I must be able to do such action after hovering over a hotel image

@search_rescounterHotelImagesDevDesktop_saveHotel_dev @dev @Story:#16410
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I hove over a hotel image
And I click on save button
Then I should see "This hotel will be saved in your profile."

@search_rescounterHotelImagesDevDesktop_hotelGallery_dev @dev @Story:#16410
Scenario: Hotel gallery
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I hove over a hotel image
And I click on "photo gallery"
Then I should see the image gallery