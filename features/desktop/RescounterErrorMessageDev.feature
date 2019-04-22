#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter error message dev
In order that I fill the form with wrong information
As a customer
I must be able identify the error

@book_rescounterErrorMessageDev_validateErrorMessageAtServerSide_dev @dev
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true"
When I go to book page
Then I validate error message at server side

@book_rescounterErrorMessageDev_validateErrorMessageAtServerSide_dev_M @mobile @dev
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true"
When I go to book page
Then I validate error message at server side