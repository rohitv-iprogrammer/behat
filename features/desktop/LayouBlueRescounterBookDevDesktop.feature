#Feature for dev desktop scenarios only [layout blue0]
Feature: Layout blue0 rescounter book dev desktop
In order that I access book page
As a customer
I must be able to do the reservation

@book_layoutBlue0RescounterBookDevDesktop_validateErrorMessageAtServerSide_dev @dev
Scenario: Validate error message at server side
Given I am on "/hotels/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true"
When I go to book page
Then I validate error message at server side

@book_layoutBlue0RescounterBookDevDesktop_verifyRequiredFields_dev @dev
Scenario: Verify required fields
Given I am on "/hotels/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true"
When I go to book page
Then I verify the required fields:
| field | element |
| Country | .QT-country |
| Address | .QT-address |
| Zip code | .QT-zipcode |
| Full name | .QT-guestname |
| Email | .QT-guestmail |
| Phone | .QT-guestphone |
| Cardholder First Name | .QT-firstName |
| Cardholder Last Name | .QT-lastName |
| Credit Card Number | .QT-ccnum |
| Card expiration month | .QT-expmonth |
| Card expiration year | .QT-expyear |
| CVC | .QT-code |

@book_layoutBlue0RescounterBookDevDesktop_submitInvalidCreditCardDetails_dev @dev
Scenario: Submit invalid details
Given I am on "/hotels/coffeyville-ks/sleep-inn-and-suites-coffeyville-coffeyville-ks/6034dc7?autoQA=true"
When I go to book page
And I do a book with invalid credit card
Then filled details should not get clear