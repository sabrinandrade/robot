*** Settings ***
Documentation   Test cases to test Robot Framework structure
Resource        ../resource/Resource.resource
Test Setup      Open browser
Test Teardown   Close browser


*** Variables ***


*** Test Case ***
Test Case 01: Search for existing product
    Access website's home page
    Type in product's name "Blouse" on the search field
    Click "Search" button
    Check if the product "Blouse" is presented on the screen

Test Case 02: Search for non-existing product
    Access website's home page
    Type in product's name "nonExistingItem" on the search field
    Click "Search" button
    Check message "No results were found for your search "nonExistingItem""


*** Keywords ***