#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter login dev
In order I have a account
As a customer
I must be able to log in 
 
@index_rescounterLoginDev_userProfileForIndex_dev @dev @Story:#17206
Scenario: User profile for index
Given I am on "\?autoQA=true"
Then user is logged in

@search_rescounterLoginDev_userProfileForSearch_dev @dev @Story:#17206
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
Then user is logged in

@property_rescounterLoginDev_userProfileForHotel_dev @dev @Story:#17206
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
Then user is logged in

@index_rescounterLoginDev_userProfileForIndex_dev_M @mobile @dev
Scenario: User profile for index
Given I am on "\?autoQA=true"
Then user is logged in

@search_rescounterLoginDev_userProfileForSearch_dev_M @mobile @dev @StoryM:#17206
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
Then user is logged in

@property_rescounterLoginDev_userProfileForHotel_dev_M @mobile @dev @StoryM:#17206
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
Then user is logged in