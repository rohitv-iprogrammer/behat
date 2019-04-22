#Feature for live desktop scenarios only
Feature: Rescounter 404 page desktop
Because site errors may occur
With the client
I should know when an error occurs

@404_rescounter404PageDesktop_goTo404Page
Scenario: Go to 404 page
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
Then I should be on "error" page

@404_rescounter404PageDesktop_goBackToTheLastPageAccessed
Scenario: Go back to the last page accessed
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I click on "go back"
Then I should be on "search" page

@404_rescounter404PageDesktop_goBackToTheHomePage
Scenario: Go back to the home page
Given I am on "/?autoQA=true&skin=current"
When I go to "/test/"
And I click on "go back"
Then I should be on "index" page

@404_rescounter404PageDevDesktop_clickOnGoBackButton
Scenario: Click on go back button
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I click on "speak to an agent"
Then I should be on "18889997788" page