#Feature for live desktop scenarios only
Feature: Rescounter footer desktop
In order to have a footer
As a customer
I must be able to click on links

@book_rescounterErrorMessageDesktop_validateErrorMessageAtServerSide
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
Then I validate error message at server side