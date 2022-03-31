*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Page Loads
    Wait Until page Contains    Back to results

Add to Cart
    Click Button    xpath=//input[@id='add-to-cart-button']
