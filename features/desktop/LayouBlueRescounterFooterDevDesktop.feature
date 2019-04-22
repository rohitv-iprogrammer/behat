#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter footer dev desktop
In order to have a footer
As a customer
I must be able to click on links

@index_layoutBlue0RescounterFooterDevDesktop_validateLinks_dev @dev
Scenario: Validate links
Given I am on "/?autoQA=true"
Then I validate links:
| element | url |
| about | /about-us/ |
| press | //reservationcounter.com/newsroom/ |
| partner with us | //www.travelpassgroup.com/partner |
| careers | //www.travelpassgroup.com/category/careers |
| scholarships | //reservationcounter.com/scholarships/ |
| site map | //reservationcounter.com/sitemap/ |
| blog | //reservationcounter.com/travel-guides/ |
| my reservation | /reservation/ |
| faq | /faq/ |
| privacy | /privacy/ |
| terms | /terms/ |
| resdesk | https://www.reservation-desk.com |
| cancun | https://www.cancun.com |
| ticketcounter | https://www.ticketcounter.com |
| rentalcounter | http://www.rentalcounter.com |
| travelpass | https://www.travelpassgroup.com |