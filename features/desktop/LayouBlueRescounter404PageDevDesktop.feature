#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter 404 page dev desktop
Because site errors may occur
With the client
I should know when an error occurs

@404_layoutBlue0Rescounter404PageDevDesktop_goTo404Page_dev @dev
Scenario: Go to 404 page
Given I am on "/search/?autoQA=true"
When I access a invalid page
Then I should be on "error" page

@404_layoutBlue0Rescounter404PageDevDesktop_goBackToTheLastPageAccessed_dev @dev
Scenario: Go back to the last page accessed
Given I am on "/search/?autoQA=true"
When I access a invalid page
And I click on "go back"
Then I should be on "search" page

@404_layoutBlue0Rescounter404PageDevDesktop_goBackToTheHomePage_dev @dev
Scenario: Go back to the home page
Given I am on "/test/?autoQA=true"
When I click on "go back"
Then I should be on "index" page