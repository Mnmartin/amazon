*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot
*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Term
    TopNav.Submit Search
    SearchResults.Verify Results Completed

Select Product from Search Results
    SearchResults.Click Product Image
    Product.Verify Page Loads
Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added
Proceed to Checkout
     Cart.Proceed to Checkout
     SignIn.Verify Sign In
