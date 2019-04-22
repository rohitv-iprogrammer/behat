#Feature for dev mobile scenarios only
Feature: Rescounter review dev mobile
In order that want stay or I stayed in a room
As a customer
I must be able to see or write a review

@property_rescounterReviewDevMobile_seeReviewScore_dev_M @dev @mobile
Scenario: See review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "GUEST REVIEW"

@property_rescounterReviewDevMobile_clickOnViewNext10Reviews_dev_M @dev @mobile
Scenario: Click on view next 10 reviews
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
And I click on "view Next 10 Reviews"
Then I should see more than 10 review items for the hotel

@property_rescounterReviewDevMobile_checkTheReviewsScore_dev_M @dev @mobile
Scenario: Check the review score
Given I am on "/hotels/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
And I get reviews from API
Then I compare the reviews from API with the page

@property_rescounterReviewDevMobile_seeReviewScoreOnHotels2_dev_M @dev @mobile @hotels2
Scenario: See review score on hotels 2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
Then I should see text matching "Reviews"

@property_rescounterReviewDevMobile_showMoreReviewsOnHotels2_dev_M @dev @mobile @hotels2
Scenario: Show more reviews on hotels2
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "reviews"
And I scroll to the button
And I click on "show more reviews"

@property_rescounterReviewDevMobile_showMoreReviews_dev_M @dev @mobile @hotels2
Scenario: Show more reviews
Given I am on "/hotels2/las-vegas-nv/golden-nugget-hotel-casino-las-vegas-nv/61239eb/?autoQA=true&skin=current"
When I click on "show more reviews"
Then I should see more than 10 review items for the hotel2