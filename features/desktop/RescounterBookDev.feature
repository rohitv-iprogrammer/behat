#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter book dev
In order that I access book page
As a customer
I must be able to do the reservation

@book_rescounterBookDev_validateErrorMessageAtServerSide_dev @dev @Story:#17784
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
Then I validate error message at server side

@book_rescounterBookDev_doATestReservation_dev @dev @reservation @Story:#17784 @booking
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to book page
Then I do a test reservation

@book_rescounterBookDev_verifyRequiredFields_dev @dev @Story:#17784
Scenario: Verify required fields
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
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

@book_rescounterBookDev_submitInvalidCreditCardDetails_dev @dev @StoryM:#17784
Scenario: Submit invalid details
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
And I do a book with invalid credit card
Then filled details should not get clear

@book_rescounterBookDev_validateErrorMessageAtServerSide_dev_M @mobile @dev @StoryM:#17784
Scenario: Validate error message at server side
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
Then I validate error message at server side

@book_rescounterBookDev_doATestReservation_dev_M @mobile @dev @reservation @booking @StoryM:#17784
Scenario: Do a test reservation
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When I go to book page
Then I do a test reservation

@book_rescounterBookDev_verifyRequiredFields_dev_M @mobile @dev @StoryM:#17784
Scenario: Verify required fields
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
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

@book_rescounterBookDev_submitInvalidCreditCardDetails_dev_M @mobile @dev @StoryM:#17784
Scenario: Submit invalid details
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?nopopup"
When I go to book page
And I do a book with invalid credit card
Then filled details should not get clear