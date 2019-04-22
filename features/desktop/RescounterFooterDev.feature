#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter footer dev
In order to have a footer
As a customer
I must be able to click on links

@index_rescounterFooterDev_validateLinks_dev @dev @Story:#15094
Scenario: Validate links
Given I am on "/?autoQA=true"
Then I validate "footer" links:
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

@index_rescounterFooterDev_validateLinks_dev_M @mobile @dev @Story:#15094
Scenario: Validate links
Given I am on "/?autoQA=true"
Then I validate the links on footer:
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