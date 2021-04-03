*** Settings ***
Library    Selenium


*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    chrome


*** Test Cases ***
Scenario 01: Search for existing product
    Given that I am on the website's home page
    When I search for the product "Blouse"
    Then the product "Blouse" should be presented on the result screen

Scenario 02: Search for non-existing product
    Given that I am on the website's home page
    When I search for the product "nonExistingItem"
    Then an error message "No results were found for your search "nonExistingItem"" should be presented on the result screen

*** Keywords ***