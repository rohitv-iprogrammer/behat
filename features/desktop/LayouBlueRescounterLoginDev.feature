#Feature for dev desktop scenarios only  [layout blue0]
Feature: Layout blue0 rescounter login dev dektop
In order I have a account
As a customer
I must be able to log in 
 
@index_layoutBlue0RescounterLoginDevDesktop_userProfileForIndex_dev @dev
Scenario: User profile for index
Given I am on "\?autoQA=true"
Then user is logged in

@search_layoutBlue0RescounterLoginDevDesktop_userProfileForSearch_dev @dev
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
Then user is logged in

@property_layoutBlue0RescounterLoginDevDesktop_userProfileForHotel_dev @dev
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
Then user is logged in