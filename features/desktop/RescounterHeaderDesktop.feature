#Feature for live desktop scenarios only
Feature: Rescounter header desktop
In order to have a header
As a customer
I must be able to click on links

@index_rescounterHeaderDesktop_clickOnSite
Scenario: Click on site
Given I am on "/?autoQA=true&skin=current"
Then I validate links:
| element | url |
| logo site | / |
| about | /about-us/ |
| my reservation | /reservation/ |
| terms | /terms/ |
| faq | /faq/ |
| resdesk | https://www.reservation-desk.com |
| nitecrawler | https://www.nitecrawler.com |

@index_rescounterHeaderDesktop_clickOnChatInTheMenu
Scenario: Click on chat in the menu
Given I am on "/?autoQA=true&skin=current"
When I click on "home benefit default"
Then olark chat is displayed

@search_rescounterHeaderDesktop_searchHotel
Scenario: Search hotel
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
Then I should see a rates

@search_rescounterHeaderDesktop_searchWithTwoRooms
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I click on "capacity field"
And I select 2 rooms
And I click on "search button"
Then I should be on "search" page

@search_rescounterHeaderDesktop_searchRoomForAdultsAndKids
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true&skin=current"
When I select as destination "Las Vegas, NV, United States"
And I select 1 child/children
And I select 3 as age
And I click on "search button"
Then I should be on "search" page