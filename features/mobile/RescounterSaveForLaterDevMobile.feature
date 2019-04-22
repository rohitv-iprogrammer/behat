#Feature for dev mobile scenarios only
Feature: Rescounter save for later dev mobile
In order that want to see the hotel later
As a customer
I must be able to save for later

@property_rescounterSaveForLaterDevMobile_sendAEmailWithTheHotelLink_dev_M @mobile @dev
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see "Itinerary sent!"

@property_rescounterSaveForLaterDevMobile_sendAEmailWithTheHotelLinkFailing1_dev_M @mobile @dev
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I click on "send / save now"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterDevMobile_sendAEmailWithTheHotelLinkFailing2_dev_M @mobile @dev
Scenario: Send a email with the hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qapartnerfusion.com"
And I click on "send / save now"
Then I should see "Please enter valid email address."

@profile_rescounterSaveForLaterDevMobile_loadSavedHotelsOnProfile_dev_M @mobile @dev
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterDevMobile_removeSavedHotels_dev_M @mobile @dev
Scenario: Remove saved hotels
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterDevMobile_multilesEmails_dev_M @mobile @dev
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I click to send for two emails
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see "Intinerary sent!"