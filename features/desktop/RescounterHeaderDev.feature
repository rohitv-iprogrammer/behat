#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter header dev
In order to have a header
As a customer
I must be able to click on links

@index_rescounterHeaderDev_validateLinks_dev @dev @Story:#15094
Given I am on "/?autoQA=true"
Then I validate the links:
| element | url |
| logo site | / |
| about | /about-us/ |
| my reservation | /reservation/ |
| terms | /terms/ |
| faq | /faq/ |
| resdesk | https://www.reservation-desk.com |
| nitecrawler | https://www.nitecrawler.com |

@index_rescounterHeaderDev_clickOnChatInTheMenu_dev @dev @Story:#15094
Scenario: Click on chat in the menu
Given I am on "/?autoQA=true"
When I click on "menu"
And I open the chat
Then olark chat is displayed

@search_rescounterHeaderDev_searchHotel_dev @dev
Scenario: Search hotel
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
Then I should see hotels

@search_rescounterHeaderDev_searchWithTwoRooms_dev @dev
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I click on "guests"
And I select "2" rooms
And I click on "search button"
Then I should be on "search" page

@search_rescounterHeaderDev_searchRoomForAdultsAndKids_dev @dev
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select "1" child/children
And I select "3" as age
And I click on "search button"
Then I should be on "search" page

@index_rescounterHeaderDev_validateLinks_dev_M @mobile @dev @StoryM:#15094
Scenario: Validate links
Given I am on "/?autoQA=true"
Then I validate the links:
| element | url |
| logo site | / |
| about | /about-us/ |
| my reservation | /reservation/ |
| terms | /terms/ |
| faq | /faq/ |
| resdesk | https://www.reservation-desk.com |
| nitecrawler | https://www.nitecrawler.com |

@index_rescounterHeaderDev_clickOnChatInTheMenu_dev_M @mobile @dev @StoryM:#15094
Scenario: Click on chat in the menu
Given I am on "/?autoQA=true"
When I click on "menu"
And I click chat
Then olark chat is displayed

@search_rescounterHeaderDev_searchHotel_dev_M @mobile @dev
Scenario: Search hotel
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
Then I should see hotels

@search_rescounterHeaderDev_searchWithTwoRooms_dev_M @mobile @dev
Scenario: Search with two rooms
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I click on capacity field
And I select "2" rooms
And I click on "search button"
Then I should be on "search" page

@search_rescounterHeaderDev_searchRoomForAdultsAndKids_dev_M @mobile @dev
Scenario: Search room for adults and kids
Given I am on "/search/?autoQA=true"
When I select as destination "Las Vegas, NV, United States"
And I select "1" child/children
And I select "3" as age
And I click on "search button"
Then I should be on "search" page