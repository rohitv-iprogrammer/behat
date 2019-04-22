#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter save for later dev
In order that want to see the hotel later
As a customer
I must be able to save for later

@search_rescounterSaveForLaterDev_saveHotel_dev @dev @Story:#15227
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on "save for later button"
Then I should see "This hotel will be saved in your profile."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLink_dev @dev @Story:#16761
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should see "Intinerary sent!"

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing1_dev @dev @Story:#15111
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I click on "submit save for later"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing2_dev @dev @Story:#16761
Scenario: Send email with hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should not see "Please enter a valid email address."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing1OnHotels2_dev @dev @hotels2
Scenario: Send a email with the hotel link - Failing 1 on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I click on "submit save for later"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing2OnHotels2_dev @dev @hotels2
Scenario: Send a email with the hotel link - Failing 2 on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should not see "Please enter a valid email address."

@profile_coreSaveForLaterDev_loadSavedHotelsOnProfile_dev @dev @Story:#16761
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterDev_removeSavedHotels_dev @dev @Story:#15269
Scenario: Remove saved hotels
Given I am on "/?autoQA=true"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterDev_multilesEmails_dev @dev @Story:#15532
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on save for later
And I click to send for two emails
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see "Intinerary sent!"

@search_rescounterSaveForLaterDev_saveHotel_dev_M @mobile @dev @Story:#15227
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true"
When I hove over a hotel image
And I click on "save for later button"
Then I should see "This hotel will be saved in your profile."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLink_dev_M @mobile @dev @Story:#16761
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on save for later
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should see "Itinerary sent!"

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing1_dev_M @mobile @dev @Story:#16761
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on save for later
And I click on "submit save for later"
Then I should see "This field is required."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing2_dev_M @mobile @dev @Story:#16761
Scenario: Send a email with the hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on save for later
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should not see "Please enter a valid email address."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing1OnHotels2_dev_M @mobile @dev @hotels2
Scenario: Send a email with the hotel link - Failing 1 on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I click on "submit save for later"
Then I should see "Please enter email address or mobile number."

@property_rescounterSaveForLaterDev_sendAEmailWithTheHotelLinkFailing2OnHotels2_dev_M @mobile @dev @hotels2
Scenario: Send a email with the hotel link - Failing 2 on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should not see "Please enter a valid email address."

@profile_coreSaveForLaterDev_loadSavedHotelsOnProfile_dev_M @mobile @dev @Story:#16761
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterDev_removeSavedHotels_dev_M @mobile @dev @Story:#15269
Scenario: Remove saved hotels
Given I am on "/"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterDev_multilesEmails_dev_M @mobile @dev @Story:#15532
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "save hotel"
And I click to send for two emails
And I select as email "qa@partnerfusion.com"
And I click on "submit save for later"
Then I should see "Intinerary sent!"