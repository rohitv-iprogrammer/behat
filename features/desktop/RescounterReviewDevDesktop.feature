#Feature for dev desktop scenarios only
Feature: Rescounter review dev desktop
In order that want stay or I stayed in a room
As a customer
I must be able to see or write a review

@property_rescounterReviewDevDesktop_seeReviewScore_dev @dev @Story:#16436
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterReviewDevDesktop_clickOnViewNext10Reviews_dev @dev @Story:#16436
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
And I scroll to the button
And I click on "view Next 10 Reviews"
Then I should see more than 10 review items for the hotel

@property_rescounterReviewDevDesktop_seeReviewScoreOnHotels2_dev @dev @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDevDesktop_showMoreReviewsOnHotels2_dev @dev @hotels2
Scenario: Show more reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"

@property_rescounterReviewDevDesktop_showMoreReviews_dev @dev @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I scroll to the button
And I click on "show more reviews"
Then I should see more than 10 review items for the hotel2

@property_rescounterReviewDevDesktop_refineReviewsNewestToOldest_dev @dev @hotels2
Scenario: Refine reviews - Newest to Oldest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"

@property_rescounterReviewDevDesktop_refineReviewsOldestToNewest_dev @dev @hotels2
Scenario: Refine reviews - Oldest to Newest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
And sort by "Oldest to Newest" the reviews
Then reviews should be sorted by "Oldest to Newest"

@property_rescounterReviewDevDesktop_refineReviewsFamilyWithOlderChildren_dev @dev @hotels2
Scenario: Refine reviews - Family with older children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Family with Older Children" the reviews
Then reviews should be sorted by "Family with Older Children"

@property_rescounterReviewDevDesktop_refineReviewsFamilyWithYoungerChildren_dev @dev @hotels2
Scenario: Refine reviews - Family with younger children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Family with Younger Children" the reviews
Then reviews should be sorted by "Family with Younger Children"

@property_rescounterReviewDevDesktop_refineReviewsMatureCouple_dev @dev @hotels2
Scenario: Refine reviews - Mature couple
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Mature Couple" the reviews
Then reviews should be sorted by "Mature Couple"

@property_rescounterReviewDevDesktop_refineReviewsSoloTraveller_dev @dev @hotels2
Scenario: Refine reviews - Solo traveller
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Solo Traveller" the reviews
Then reviews should be sorted by "Solo Traveller"

@property_rescounterReviewDevDesktop_refineReviewsGroup_dev @dev @hotels2
Scenario: Refine reviews - Group
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I select the menu "Reviews" on hotels2
And sort by "Group" the reviews
Then reviews should be sorted by "Group"