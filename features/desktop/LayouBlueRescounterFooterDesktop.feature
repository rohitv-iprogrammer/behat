#Feature for live desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter footer desktop
In order to have a footer
As a customer
I must be able to click on links

@index_layoutBlue0RescounterFooterDesktop_validateLinks
Scenario: Validate links
Given I am on "/?autoQA=true"
Then I validate links:
| element | url |
| about | /about-us/ |
| my reservation | /reservation/ |
| faq | /faq/ |
| nitecrawler | https://www.nitecrawler.com |
| resdesk | https://www.reservation-desk.com |
| ticketcounter | https://www.ticketcounter.com |
| rentalcounter | http://www.rentalcounter.com |
| travelpass | https://www.travelpass.com |
| privacy | /privacy/ |
| terms | /terms/ |