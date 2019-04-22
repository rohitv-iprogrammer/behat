#Feature for live mobile scenarios only
Feature: Rescounter login mobile
In order I have a account
As a customer
I must be able to log in 

@index_rescounterLoginMobile_userProfileForIndex_M @mobile
Scenario: User profile for index
Given I am on "\?autoQA=true&skin=current"
Then user is logged in

@search_rescounterLoginMobile_userProfileForSearch_M @mobile
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
Then user is logged in

@property_rescounterLoginMobile_userProfileForHotel_M @mobile @SmokeRCMobile
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then user is logged in