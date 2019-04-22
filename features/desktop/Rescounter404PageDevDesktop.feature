#Feature for dev desktop scenarios only
Feature: Rescounter 404 page dev desktop
Because site errors may occur
With the client
I should know when an error occurs

@404_rescounter404PageDevDesktop_goTo404Page_dev @dev @Story:#152813
Scenario: Go to 404 page
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
Then I should be on "error" page

@404_rescounter404PageDevDesktop_goBackToTheLastPageAccessed_dev @dev @Story:#152813
Scenario: Go back to the last page accessed
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I click on "go back"
Then I should be on "search" page

@404_rescounter404PageDevDesktop_goBackToTheHomePage_dev @dev @Story:#152813
Scenario: Go back to the home page
Given I am on "/test/?autoQA=true&skin=current"
When I click on "go back"
Then I should be on "index" page

@404_rescounter404PageDevDesktop_clickOnGoBackButton_dev @dev @Story:#152813
Scenario: Click on go back button
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I click on "speak to an agent"
Then I should be on "18889997788" page