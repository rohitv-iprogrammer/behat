#Feature for dev desktop scenarios only
Feature: Rescounter save for later dev desktop
In order that want to see the hotel later
As a customer
I must be able to save for later

@search_rescounterSaveForLaterDevDesktop_saveHotel_dev @dev @Story:#15227
Scenario: Save hotel
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
When I hove over a hotel image
And I click on "save for later button"
Then I should see text matching "This hotel will be saved in your profile."

@property_rescounterSaveForLaterDevDesktop_sendAEmailWithTheHotelLink_dev @dev @Story:#16761
Scenario: Send a email with the hotel link
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see text matching "Intinerary sent!"

@property_rescounterSaveForLaterDevDesktop_sendAEmailWithTheHotelLinkFailing1_dev @dev @Story:#15111
Scenario: Send a email with the hotel link - Failing 1
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I click on "send / save now"
Then I should see text matching "Please enter email address or mobile number."

@property_rescounterSaveForLaterDevDesktop_sendAEmailWithTheHotelLinkFailing2_dev @dev @Story:#16761
Scenario: Send email with hotel link - Failing 2
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I select as email "qapartnerfusion.com"
And I click on "send / save now"
Then I should see text matching "Please enter valid email address."

@profile_rescounterSaveForLaterDevDesktop_loadSavedHotelsOnProfile_dev @dev @Story:#16761
Scenario: Load saved hotels on profile
Given I am on "/hotels/las-vegas-nv/oasis-at-gold-spike-las-vegas-nv/5fdd484/?autoQA=true&skin=current"
When user is logged in
And I save for later the hotel
Then load saved hotels on profile

@profile_rescounterSaveForLaterDevDesktop_removeSavedHotels_dev @dev @Story:#15269
Scenario: Remove saved hotels
Given I am on "/?autoQA=true&skin=current"
And user is logged in
When I access "Saved Hotel" tab
Then If I have saved hotels, I can remove them

@profile_rescounterSaveForLaterDevDesktop_multilesEmails_dev @dev @Story:#15532
Scenario: Multiples emails
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "save for later button"
And I click on "plus"
And I select as email "qa@partnerfusion.com"
And I click on "send / save now"
Then I should see text matching "Intinerary sent!"