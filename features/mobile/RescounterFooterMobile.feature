#Feature for live mobile scenarios only
Feature: Rescounter footer mobile
In order to have a footer
As a customer
I must be able to click on links

@index_rescounterFooterMobile_validateLinks_M @mobile
Scenario: Validate links
Given I am on "/?autoQA=true&skin=current"
Then I validate links:
| element | url |
| terms | /terms/ |
| privacy | /privacy/ |
| contact | /contact/ |
| facebook | //www.facebook.com/ReservationCounter |
| twitter | //twitter.com/ResCounter/ |
| pinterest | //www.pinterest.com/rescounter/ |
| instagram | //www.instagram.com/ResCounter/ |