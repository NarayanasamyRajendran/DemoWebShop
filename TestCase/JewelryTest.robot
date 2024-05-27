*** Settings ***
Documentation    To validate Profile information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Task Teardown    Close Browser session
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\GenericResources.robot
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\JewelryResources.robot


*** Test Cases ***
Validate the jewelry functionality
    [Documentation]    This test case will validate the sort by functionality
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Verify whether Sorting Order in A to Z
    JewelryResources.Click the first product

Validate the jewelry functionality without filtering
    [Documentation]    This test case will validate that without sort by product
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the first product

Validate the jewelry functionality with filtering all product
    [Documentation]    This test case will validate that product
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Verify whether Sorting Order in A to Z
    JewelryResources.Click dropdown display
    JewelryResources.Select the option in the display dropdown
    JewelryResources.Click view as option
    JewelryResources.Select list in the view as option
    JewelryResources.Check whether product are listed in one by one

Validate the jewelry with add to cart
    [Documentation]    This test case will validate that product with add to cart
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click second product in low to high
    JewelryResources.Click add to cart button
    JewelryResources.Check whether selected product in cart

Validate the price with range 0 t0 500
    [Documentation]    This test case will validate the price
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Click between 0 to 500 range
    JewelryResources.Verify all products are between 0 to 500
    
Validate the price with range 500 t0 700
    [Documentation]    This test case will validate the price
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Click between 500 to 700 range
    #JewelryResources.Verify all products are between 500 to 700

#Validate the price with range 700 t0 3000
    #[Documentation]    This test case will validate the price
    #JewelryResources.Click the jewelry element
    #JewelryResources.Click the sort by dropdown button
    #JewelryResources.Click low to high option in the dropdown list
    #JewelryResources.Click A to Z option in the dropdown list
    #JewelryResources.Click between 700 to 3000 range
    #JewelryResources.Verify all products are between 700 to 3000

Validate the price with range 0 t0 500 and remove
    [Documentation]    This test case will validate the price and remove
    JewelryResources.Click the jewelry element
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click low to high option in the dropdown list
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Click between 0 to 500 range
    JewelryResources.Click remove filter option

#Validate the price with range 0 t0 500 and remove in add to cart
    #[Documentation]    This test case will validate the price and remove in add to cart
    #JewelryResources.Click the jewelry element
    #JewelryResources.Check whether the jewelry is visible
    #JewelryResources.Click the first product
    #JewelryResources.Click add to cart button
    #JewelryResources.Click shopping cart in top