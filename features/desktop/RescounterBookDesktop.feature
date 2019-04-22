#Feature for live desktop scenarios only
Feature: Rescounter book desktop
In order that I access book page
As a customer
I must be able to do the reservation

@book_rescounterBookDesktop_validateErrorMessageAtServerSide
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I go to book page
Then I validate error message at server side

@book_rescounterBookDesktop_verifyRequiredFields
Scenario: Verify required fields
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
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
| CVV | .QT-code |

@book_rescounterBookDevDesktop_submitInvalidCreditCardDetails
Scenario: Submit invalid details
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When I go to book page
And I do a book with invalid credit card
Then filled details should not get clear