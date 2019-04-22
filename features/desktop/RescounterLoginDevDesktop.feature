#Feature for dev desktop scenarios only
Feature: Rescounter login dev desktop
In order I have a account
As a customer
I must be able to log in 
 
@index_rescounterLoginDevDesktop_userProfileForIndex_dev @dev @Story:#17206
Scenario: User profile for index
Given I am on "\?autoQA=true&skin=current"
Then user is logged in

@search_rescounterLoginDevDesktop_userProfileForSearch_dev @dev @Story:#17206
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
Then user is logged in

@property_rescounterLoginDevDesktop_userProfileForHotel_dev @dev @Story:#17206 @SmokeRCDevDesktop
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then user is logged in