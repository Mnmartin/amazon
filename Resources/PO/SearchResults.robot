*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Results Completed
    Wait Until Page Contains    results for  ${SEARCH_TERM}

Click Product Image
    [Documentation]  Click on the first image in the product search image
    Click Image  xpath=//img[@data-image-index='1']