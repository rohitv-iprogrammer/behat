#Feature for live mobile scenarios only
Feature: Rescounter access book page mobile
In order to go to book page
As a customer
I must be able to fill fields to do the reservation

@book_rescounterBookMobile_goToBookPage_M @mobile
Scenario: Go to book page
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
Then I should be on "book" page