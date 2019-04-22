#Feature for live mobile scenarios only
Feature: Rescounter review mobile
In order that want stay or I stayed in a room
As a customer
I must be able to see or write a review

@property_rescounterReviewMobile_seeReviewScore_M @mobile
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterReviewMobile_clickOnViewNext10Reviews_M @mobile
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I click on "view Next 10 Reviews"
Then I should see more than 10 review items for the hotel

@property_rescounterReviewMobile_checkTheReviewsScore_M @mobile
Scenario: Check the review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
And I get reviews from the API
Then I compare the reviews from API with the page

@property_rescounterReviewDev_seeReviewScoreOnHotels2_M @mobile @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDev_showMoreReviewsOnHotels2_M @mobile @hotels2
Scenario: Show more reviews on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"

@property_rescounterReviewDev_showMoreReviews_M @mobile @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "show more reviews"
Then I should see more than 10 review items for the hotel2

@property_rescounterReviewDev_sortByNewstToOldest_M @mobile @hotels2
Scenario: Sort by newst to oldest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"

@property_rescounterReviewDev_sortByOldestToNewest_M @mobile @hotels2
Scenario: Sort by oldest to newest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Oldest to Newest" the reviews
Then reviews should be sorted by "Oldest to Newest"

@property_rescounterReviewDev_sortByFamilyWithOlderChildren_M @mobile @hotels2
Scenario: Sort by family with older children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with older children" the reviews
Then reviews should be sorted by "Family with older children"

@property_rescounterReviewDev_sortByFamilyWithYougerChildren_M @mobile @hotels2
Scenario: Sort by family with younger children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with younger children" the reviews
Then reviews should be sorted by "Family with younger children"

@property_rescounterReviewDev_sortByMatureCouple_M @mobile @hotels2
Scenario: Sort by mature couple
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Mature couple" the reviews
Then reviews should be sorted by "Mature couple"

@property_rescounterReviewDev_sortBySoloTraveller_M @mobile @hotels2
Scenario: Sort by solo traveller
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Solo traveller" the reviews
Then reviews should be sorted by "Solo traveller"

@property_rescounterReviewDev_sortByGroup_M @mobile @hotels2
Scenario: Sort by group
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Group" the reviews
Then reviews should be sorted by "Group"