*** Settings ***
Documentation   This is some basic info about this test Suite
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  Close Web Test
*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  "Ferari 458"

*** Test Cases ***
User can search for Products
    [Documentation]  This is some basic info about this test
    [Tags]  Smoke
    AmazonApp.Search for Products

User should sign in to check out
    [Documentation]  This is some basic info about this test
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Proceed to Checkout

