#Feature for live desktop scenarios only
Feature: Rescounter save for later desktop
In order that want to see the hotel later
As a customer
I must be able to save for later

@search_rescounterSaveForLaterDesktop_saveHotel
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I hove over a hotel image
And I click on "save for later button"
Then I should see "This hotel will be saved in your profile."

@property_rescounterSaveForLaterDesktop_sendAEmailWithTheHotelLink
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should see "Intinerary sent!"

@property_rescounterSaveForLaterDesktop_sendAEmailWithTheHotelLinkFailing1
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I click on "submit save for later"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterDesktop_sendAEmailWithTheHotelLinkFailing2
Scenario: Send a email with the hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should not see "Please enter a valid email address."

@profile_rescounterSaveForLaterDesktop_loadSavedHotelsOnProfile
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterDesktop_removeSavedHotels
Scenario: Remove saved hotels
Given I am on "/autoQA=true&skin=current"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterDesktop_multilesEmails
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I click to send for two emails
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should see "Intinerary sent!"