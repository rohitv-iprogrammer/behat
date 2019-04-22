#Feature for live mobile scenarios only
Feature: Rescounter save for later mobile
In order that want to see the hotel later
As a customer
I must be able to save for later

@property_rescounterSaveForLaterMobile_sendAEmailWithTheHotelLink_M @mobile
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see "Itinerary sent!"

@property_rescounterSaveForLaterMobile_sendAEmailWithTheHotelLinkFailing1_M @mobile
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I click on "send / save now"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterMobile_sendAEmailWithTheHotelLinkFailing2_M @mobile
Scenario: Send a email with the hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I select as email "qapartnerfusion.com"
And I click on "send / save now"
Then I should not see "Please enter valid email address."

@profile_rescounterSaveForLaterMobile_loadSavedHotelsOnProfile_M @mobile
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterMobile_removeSavedHotels_M @mobile
Scenario: Remove saved hotels
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterMobile_multilesEmails_M @mobile
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save hotel"
And I click to send for two emails
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see "Intinerary sent!"