*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until page contains    Added to Cart

Proceed to Checkout
    Click button    xpath=//input[@name='proceedToRetailCheckout']