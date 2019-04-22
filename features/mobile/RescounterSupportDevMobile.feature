#Feature for dev mobile scenarios only
Feature: Rescounter support dev mobile
In order that I have some doubt
As a customer
I must be able to talk with the support

@faq_rescounterSupportDevMobile_verifyFaqQuestions_dev_M @dev @mobile
Scenario: Verify faq questions
Given I am on "/faq/?autoQA=true&skin=current"
Then I verify faq questions