#Feature for live mobile scenarios only
Feature: Rescounter pagination mobile
In order to be able to compare many hotels
as a customer
I should be able to infinite scroll on search page

@search_rescounterPaginationMobile_searchPagePagination_M @mobile
Scenario: Search page pagination
Given I am on "/search/?destination=Las+Vegas%2C+NV%2C+Estados+Unidos/?autoQA=true&skin=current"
Then more hotels should be visible