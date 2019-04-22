#Feature for live desktop scenarios only
Feature: Rescounter login desktop
In order I have a account
As a customer
I must be able to log in 
 
@index_rescounterLoginDesktop_userProfileForIndex
Scenario: User profile for index
Given I am on "\?autoQA=true&skin=current"
Then user is logged in

@search_rescounterLoginDesktop_userProfileForSearch
Scenario: User profile for search
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
Then user is logged in

@property_rescounterLoginDesktop_userProfileForHotel @SmokeRCDesktop
Scenario: User profile for hotel
Given I am on "hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
Then user is logged in