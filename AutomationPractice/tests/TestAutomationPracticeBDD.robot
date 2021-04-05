*** Settings ***
Documentation   Test cases to test Robot Framework structure using BDD
Resource        ../resource/Resource.resource
Test Setup      Open new browser
Test Teardown   Close current browser


*** Variables ***


*** Test Case ***
Scenario 01: Search for existing product
    Given that I am on the website's home page
    When I search for the product "Blouse"
    Then the product "Blouse" should be presented on the result screen

Scenario 02: Search for non-existing product
    Given that I am on the website's home page
    When I search for the product "nonExistingItem"
    Then an error message "No results were found for your search "nonExistingItem"" should be presented on the result screen

*** Keywords ***
Given that I am on the website's home page
    Access website's home page

When I search for the product "${PRODUCT}"
    Type in product's name "${PRODUCT}" on the search field
    Click "Search" button

Then the product "${PRODUCT}" should be presented on the result screen
    Check if the product "${PRODUCT}" is presented on the screen

Then an error message "${ERROR_MESSAGE}" should be presented on the result screen
    Check message "${ERROR_MESSAGE}"