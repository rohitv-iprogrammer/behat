#Feature for dev mobile scenarios only
Feature: Rescounter 404 page dev mobile
Because site errors may occur
With the client
I should know when an error occurs

@404_rescounter404PageDevMobile_goTo404Page_dev_M @mobile @dev
Scenario: Go to 404 page
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
Then I should be on "error" page

@404_rescounter404PageDevMobile_goBackToTheLastPageAcceddes_dev_M @mobile @dev
Scenario: Go back to the last page accessed
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I scroll to the button
And I click on "go back"
Then I should be on "search" page

@404_rescounter404PageDevMobile_goBackToTheHomePage_dev_M @mobile @dev
Scenario: Go back to the home page
Given I am on "/test/?autoQA=true&skin=current"
When I scroll to the button
And I click on "go back"
Then I should be on "index" page

@404_rescounter404PageDevMobile_clickOnGoBackButton_dev_M @mobile @dev
Scenario: Click on go back button
Given I am on "/search/?autoQA=true&skin=current"
When I access a invalid page
And I scroll to the button
And I click on "speak to an agent"
Then I should be on "18889997788" page