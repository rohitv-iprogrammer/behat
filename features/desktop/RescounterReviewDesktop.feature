#Feature for live desktop scenarios only
Feature: Rescounter review desktop dev
In order that want stay or I stayed in a room
As a customer
I must be able to see or write a review

@property_rescounterReviewDesktop_seeReviewScore
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterReviewDesktopDev_clickOnViewNext10Reviews
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I click on "view Next 10 Reviews"
Then I should see more than 10 review items for the hotel

@property_rescounterReviewDesktop_checkTheReviewsScore
Scenario: Check the review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
And I get reviews from the API
Then I compare the reviews from API with the page

@property_rescounterReviewDesktopDev_seeReviewScoreOnHotels2 @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDesktop_sortByNewestToOldest @hotels2
Scenario: Sort by newest to oldest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"

@property_rescounterReviewDesktop_sortByOldestToNewest @hotels2
Scenario: Sort by oldest to newest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Oldest to Newest" the reviews
Then reviews should be sorted by "Oldest to Newest"

@property_rescounterReviewDesktop_sortByFamilyWithOlderChildren @hotels2
Scenario: Sort by family with older children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Family with older children" the reviews
Then reviews should be sorted by "Family with older children"

@property_rescounterReviewDesktop_sortByFamilyWithYoungerChildren @hotels2
Scenario: Sort by family with younger children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Family with younger children" the reviews
Then reviews should be sorted by "Family with younger children"

@property_rescounterReviewDesktop_sortByMatureCoupleToReview @hotels2
Scenario: Sort by mature couple the review
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Mature couple" the reviews
Then reviews should be sorted by "Mature couple"

@property_rescounterReviewDesktop_sortBySoloTraveller @hotels2
Scenario: Sort by solo traveller
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Solo traveller" the reviews
Then reviews should be sorted by "Solo traveller"

@property_rescounterReviewDesktopDev_showMoreReviews @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "show more reviews"
Then I should see more than 10 review items for the hotel2

@property_rescounterReviewDesktop_refineReviewsNewestToOldest @hotels2
Scenario: Refine reviews - Newest to Oldest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"