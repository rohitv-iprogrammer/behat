#Feature for live desktop scenarios only
Feature: Rescounter required fields desktop
In order to interact with the site
As a customer
I must be able to know the required fields

@book_rescounterRequiredFieldsDesktop_verifyRequiredFields_dev @dev
Scenario: Verify required fields
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?autoQA=true&skin=current"
When I go to book page
Then I verify the required fields:
| field | element |
| Full name | .QT-guestname |
| Phone | .QT-guestphone |
| Email | .QT-guestmail |
| Country | .QT-country |
| Zip code | .QT-zipcode |
| Adress | .QT-address |
| Cardholder First Name | .QT-firstName |
| Cardholder Last Name | .QT-lastName |
| Credit Card Number | .QT-ccnum |
| Credit card type | .QT-cctype |
| Card expiration month | .QT-expmonth |
| Card expiration year | .QT-expyear |
| CVC | .QT-code |