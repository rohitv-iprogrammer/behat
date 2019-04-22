#Feature for live desktop scenarios only
Feature: Rescounter support desktop
In order that I have some doubt
As a customer
I must be able to talk with the support

@faq_rescounterSupportDesktop_verifyFqaQuestions
Scenario: Verify faq questions
Given I am on "/faq/?autoQA=true&skin=current"
Then I verify faq questions