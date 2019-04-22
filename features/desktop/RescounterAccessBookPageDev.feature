#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter access book page dev
In order to go to book page
As a customer
I must be able to fill fields to do the reservation

@book_rescounterAccessBookPageDev_goToBookPage_dev @dev
Scenario: Go to book page
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to book page
Then I should be on "book" page
 
@book_rescounterAccessBook
Scenario: Go to book page
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
Then I should be on "book" page