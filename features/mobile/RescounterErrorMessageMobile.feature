#Feature for live mobile scenarios only
Feature: Rescounter error message mobile
In order that I fill the form with wrong information
As a customer
I must be able identify the error

@book_rescounterErrorMessageMobile_validateErrorMessageAtServerSide_M @mobile
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484?autoQA=true&skin=current"
When I go to book page
Then I validate error message at server side