#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter review dev
In order that want stay or I stayed in a room
As a customer
I must be able to see or write a review

@property_rescounterReviewDev_seeReviewScore_dev @dev @Story:#16436
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "REVIEW SCORE"

@property_rescounterReviewDev_clickOnViewNext10Reviews_dev @dev @Story:#16436
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I scroll to the button
And I click on "view Next 10 Reviews"
Then I should see 20 review items for the hotel

@property_rescounterReviewDev_requiredFieldsToWriteAReview_dev_M @mobile @dev @StoryM:#16436
Scenario: Required fields to write a review
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I open popup to write a review
Then I verify the required fields:
| field | element |
| Password field | #f_review_write_write_name |
| Traveller type | #f_review_write_write_traveller |
| Comment | #f_review_write_write_comment |

@property_rescounterReviewDev_seeReviewScoreOnHotels2_dev @dev @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDev_showMoreReviewsOnHotels2_dev @dev @hotels2
Scenario: Show more reviews on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"

@property_rescounterReviewDev_showMoreReviews_dev @dev @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "show more reviews"
Then I should see 20 review items for the hotel2

@property_rescounterReviewDev_refineReviewsNewestToOldest_dev @dev @hotels2
Scenario: Refine reviews - Newest to Oldest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on 
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"

@property_rescounterReviewDev_refineReviewsOldestToNewest_dev @dev @hotels2
Scenario: Refine reviews - Oldest to Newest
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And sort by "Oldest to Newest" the reviews
Then reviews should be sorted by "Oldest to Newest"

@property_rescounterReviewDev_refineReviewsFamilyWithOlderChildren_dev @dev @hotels2
Scenario: Refine reviews - Family with older children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with older children" the reviews
Then reviews should be sorted by "Family with older children"

@property_rescounterReviewDev_refineReviewsFamilyWithYoungerChildren_dev @dev @hotels2
Scenario: Refine reviews - Family with younger children
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with younger children" the reviews
Then reviews should be sorted by "Family with Younger Children"

@property_rescounterReviewDev_refineReviewsMatureCouple_dev @dev @hotels2
Scenario: Refine reviews - Mature couple
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Mature couple" the reviews
Then reviews should be sorted by "Mature Couple"

@property_rescounterReviewDev_refineReviewsSoloTraveller_dev @dev @hotels2
Scenario: Refine reviews - Solo traveller
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Solo Traveller" the reviews
Then reviews should be sorted by "Solo Traveller"

@property_rescounterReviewDev_refineReviewsGroup_dev @dev @hotels2
Scenario: Refine reviews - Group
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Group" the reviews
Then reviews should be sorted by "Group"

@property_rescounterReviewDev_requiredFieldsToWriteAReview_dev_M @mobile @dev @StoryM:#16436
Scenario: Required fields to write a review
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I open popup to write a review
Then I verify the required fields:
| field | element |
| Password field | #f_review_write_write_name |
| Traveller type | #f_review_write_write_traveller |
| Comment | #f_review_write_write_comment |

@property_rescounterReviewDev_seeReviewScore_dev_M @mobile @dev @StoryM:#16436
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "GUEST REVIEW"

@property_rescounterReviewDev_clickOnViewNext10Reviews_dev_M @mobile @dev @StoryM:#16436
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I scroll to the bottom
And I click on "view Next 10 Reviews"
Then I should see 20 review items for the hotel

@property_rescounterReviewDev_checkTheReviewsScore_dev_M @mobile @dev @Story:#15103
Scenario: Check the review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
And I get reviews from the API
Then I compare the reviews from API with the page

@property_rescounterReviewDev_seeReviewScoreOnHotels2_dev_M @mobile @dev @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDev_showMoreReviewsOnHotels2_dev_M @mobile @dev @hotels2
Scenario: Show more reviews on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"
Then I should see 20 review items for the hotel2

@property_rescounterReviewDev_showMoreReviews_dev_M @mobile @dev @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I click on "show more reviews"
Then I should see more feedback for the hotel

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Newest to Oldest" the reviews
Then reviews should be sorted by "Newest to Oldest"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Oldest to Newest" the reviews
Then reviews should be sorted by "Oldest to Newest"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with older children" the reviews
Then reviews should be sorted by "Family with older children"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Family with younger children" the reviews
Then reviews should be sorted by "Family with younger children"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Mature couple" the reviews
Then reviews should be sorted by "Mature couple"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Solo traveller" the reviews
Then reviews should be sorted by "Solo traveller"

@property_rescounterReviewDev_RefineReviewsDates_dev_M @mobile @dev @hotels2
Scenario: Refine reviews - dates
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true"
When I select the menu "Reviews" on hotels2
And sort by "Group" the reviews
Then reviews should be sorted by "Group"