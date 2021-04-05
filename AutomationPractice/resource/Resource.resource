*** Settings ***
Documentation   Resources used for automation practice
Library         SeleniumLibrary


*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    firefox


*** Keywords ***
Open new browser
    [Documentation]     Opens browser
    Open Browser  about:blank  ${BROWSER}

Close current browser
    [Documentation]     Closes current browser window
    Close Browser

Access website's home page
    [Documentation]     Opens website's home page
    Go To  ${URL}
    Title Should Be  My Store

Type in product's name "${PRODUCT}" on the search field
    [Documentation]     Inserts product which will be searched for on the search field
    Input Text  id=search_query_top  ${PRODUCT}

Click "Search" button
    [Documentation]     Clicks Search button
    Click Button  name=submit_search

Check if the product "${PRODUCT}" is presented on the screen
    [Documentation]     Checks if desired product is presented on screen
    Wait Until Element Is Visible  css=#center_column > h1
    Title Should Be  Search - My Store
    Page Should Contain Image  xpath=/html/body/div/div[2]/div/div[3]/div[2]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

Check message "${ERROR_MESSAGE}"
    [Documentation]     Checks if desired message is shown on screen
    Wait Until Element Is Visible  xpath=/html/body/div/div[2]/div/div[3]/div[2]/p
    Element Text Should Be  xpath=/html/body/div/div[2]/div/div[3]/div[2]/p  ${ERROR_MESSAGE}