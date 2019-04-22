#Feature for live desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter footer desktop
In order to have a footer
As a customer
I must be able to click on links

@book_layoutBlue0RescounterErrorMessageDesktop_validateErrorMessageAtServerSide
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
Then I validate error message at server side