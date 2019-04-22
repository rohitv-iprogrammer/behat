#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter error message dev desktop
In order that I fill the form with wrong information
As a customer
I must be able identify the error

@book_layoutBlue0RescounterErrorMessageDevDesktop_validateErrorMessageAtServerSide_dev @dev
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/the-d-las-vegas-las-vegas-nv/61253b/?autoQA=true"
When I go to book page
Then I validate error message at server side