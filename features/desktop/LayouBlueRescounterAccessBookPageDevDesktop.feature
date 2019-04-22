#Feature for dev desktop scenarios only#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter access book page dev desktop
In order to go to book page
As a customer
I must be able to fill fields to do the reservation

@book_layoutBlue0RescounterAccessBookPageDevDesktop_goToBookPage_dev @dev
Scenario: Go to book page
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to book page
Then I should be on "book" page