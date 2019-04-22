#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter required fields dev
In order to interact with the site
As a customer
I must be able to know the required fields

@index_rescounterRequiredFieldsDev_verifyRequiredField_dev @dev
Scenario: Verify required fields
Given I am on "/?autoQA=true"
Then I verify the required fields:
| field | element |
| Destination | .QT-searchfield |

@search_rescounterRequiredFieldsDev_verifyRequiredField_dev @dev
Scenario: Verify required fields
Given I am on "/?autoQA=true"
Then I verify the required fields:
| field | element |
| Destination | .QT-searchfield |

@book_rescounterRequiredFieldsDev_verifyRequiredFields_dev @dev
Scenario: Verify required fields
Given I am on "/hotel/6082365/city-center-motel-las-vegas-nv/?autoQA=true"
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

@index_rescounterRequiredFieldsDev_verifyRequiredField_dev_M @mobile @dev
Scenario: Verify required fields
Given I am on "/?autoQA=true"
Then I verify the required fields:
| field | element |
| Destination | .QT-searchfield |

@search_rescounterRequiredFieldsDev_verifyRequiredField_dev_M @mobile @dev
Scenario: Verify required fields
Given I am on "/?autoQA=true"
Then I verify the required fields:
| field | element |
| Destination | .QT-searchfield |

@book_rescounterRequiredFieldsDev_verifyRequiredFields_dev_M @mobile @dev
Scenario: Verify required fields
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I go to booki page
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