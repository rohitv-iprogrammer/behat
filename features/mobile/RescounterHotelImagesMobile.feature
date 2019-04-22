#Feature for mobile scenarios
Feature: Rescounter hotel images mobile
In order to visualize and check hotel informations later
As a customer
I must be able to do such action after hovering over a hotel image

@search_rescounterHotelImagesMobile_saveHotel_M @mobile
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on save button
Then I should see "This hotel will be saved in your profile."

@search_rescounterHotelImagesMobile_hotelGallery_M @mobile
Scenario: Hotel gallery
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on Gallery button
Then I should see the image gallery