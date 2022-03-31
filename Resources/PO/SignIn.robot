*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
Verify Sign In
    Page Should Contain Element  xpath=//h1[contains(.,'Sign-In')]