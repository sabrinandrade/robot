*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Open new browser
Test Teardown   Close current browser


*** Variables ***


*** Test Case ***
Scenario 01: Search for existing product
    Given that I am on the websites home page
    When I search for the product "Blouse"
    Then the product "Blouse" should be presented on the result screen

Scenario 02: Search for non-existing product
    Given that I am on the websites home page
    When I search for the product "nonExistingItem"
    Then an error message "No results were found for your search "nonExistingItem"" should be presented on the result screen

*** Keywords ***