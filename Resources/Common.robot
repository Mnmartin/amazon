*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser   about:blank  ${BROWSER}
    Maximize Browser Window
Close Web Test
     Close Browser