#Feature for live mobile scenarios only
Feature: Rescounter support mobile
In order that I have some doubt
As a customer
I must be able to talk with the support

@faq_rescounterSupportMobile_verifyFaqQuestions_M @mobile
Scenario: Verify faq questions
Given I am on "/faq/?autoQA=true&skin=current"
Then I verify faq questions