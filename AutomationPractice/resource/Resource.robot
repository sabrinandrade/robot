*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    firefox


*** Keywords ***
Open new browser
    Open Browser  about:blank  ${BROWSER}

Close current browser
    Close Browser

Access website's home page
    Go To  ${URL}
    Title Should Be  My Store

Type in product's name "${PRODUCT}" on the search field
    Input Text  id=search_query_top  ${PRODUCT}

Click "Search" button
    Click Button  name=submit_search

Check if the product "${PRODUCT}" is presented on the screen
    Wait Until Element Is Visible  css=#center_column > h1
    Title Should Be  Search - My Store
    Page Should Contain Image  xpath=/html/body/div/div[2]/div/div[3]/div[2]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']

Check error message "${ERROR_MESSAGE}"
    Wait Until Element Is Visible  xpath=/html/body/div/div[2]/div/div[3]/div[2]/p
    Element Text Should Be  xpath=/html/body/div/div[2]/div/div[3]/div[2]/p  ${ERROR_MESSAGE}