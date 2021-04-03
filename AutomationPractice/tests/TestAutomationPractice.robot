*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    chrome


*** Test Case ***
Test Case 01: Search for existing product
    Access website's home page
    Check if website's home page was presented
    Type in product's name "blouse" on the search field
    Click "Search" button
    Check if the product "blouse" is presented on the screen

Test Case 02: Search for non-existing product
    Access website's home page
    Check if website's home page was presented
    Type in product's name "nonExistingItem" on the search field
    Click "Search" button
    Check error message "No results were found for your search "nonExistingItem""

*** Keywords ***