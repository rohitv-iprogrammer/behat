#Feature for dev mobile scenarios
Feature: Rescounter hotel images dev mobile
In order to visualize and check hotel informations later
As a customer
I must be able to do such action after hovering over a hotel image

@search_rescounterHotelImagesDevMobile_saveHotel_dev_M @mobile @dev @StoryM:#17980
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on save button
Then I should see "This hotel will be saved in your profile."

@search_rescounterHotelImagesDevMobile_hotelGallery_dev_M @dev @mobile @StoryM:#17980
Scenario: Hotel gallery
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on Gallery button
Then I should see the image gallery