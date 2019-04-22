#Feature for dev scenarios only (desktop and mobile)
Feature: Rescounter support dev
In order that I have some doubt
As a customer
I must be able to talk with the support

@faq_rescounterSupportDev_clickToStartALiveChat_dev @dev
Scenario: Click to start a live chat
Given I am on "/support/?autoQA=true"
Then I click to start a live chat

@faq_rescounterSupportDev_verifyFqaQuestions_dev @dev
Scenario: Verify faq questions
Given I am on "/faq/?autoQA=true"
Then I verify faq questions

@support_rescounterSupportDev_clickToStartALiveChat_dev_M @mobile @dev 
Scenario: Click to start a live chat
Given I am on "/faq/?autoQA=true"
Then I click to start a live chat

@faq_rescounterSupportDev_verifyFqaQuestions_dev_M @mobile @dev
Scenario: Verify faq questions
Given I am on "/faq/?autoQA=true"
Then I verify faq questions