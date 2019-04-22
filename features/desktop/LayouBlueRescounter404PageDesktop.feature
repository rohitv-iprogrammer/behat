#Feature for live desktop scenarios only [layout blue0]
Feature: Layout blue rescounter 404 page
Because site errors may occur
With the client
I should know when an error occurs

@layoutBlueRescounter404Page_goTo404Page
Scenario: Go to 404 page
Given I am on "/search/?autoQA=true"
When I access a invalid page
Then I should be on "error" page

@layoutBlueRescounter404Page_goBackToTheLastPageAccessed
Scenario: Go back to the last page accessed
Given I am on "/search/?autoQA=true"
When I access a invalid page
And I click on "go back"
Then I should be on "search" page

@layoutBlueRescounter404Page_goBackToTheHomePage
Scenario: Go back to the home page
Given I am on "/test/?autoQA=true"
When I click on "go back"
Then I should be on "index" page