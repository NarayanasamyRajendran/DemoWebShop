*** Settings ***
Documentation    To validate login and profile information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx    sheet_name=Sheet1
Test Template    Validate the MyAccount information with java script

*** Variables ***
${_firstname}    
${_lastname}
${_email}

*** Test Cases ***
Validate MyAccount information with java script
    ${_firstname}    ${_lastname}    ${_email}

*** Keywords ***
Validate the MyAccount information with java script
    [Documentation]    This test case will validate the customer info
    [Arguments]    ${_firstname}    ${_lastname}    ${_email}
    MyAccountResources.Fill login email
    MyAccountResources.Click the gender in checkbox field
    Execute JavaScript    document.getElementById('FirstName').value = '${_firstname}'
    Execute JavaScript    document.getElementById('LastName').value = '${_lastname}'
    Execute JavaScript    document.getElementById('Email').value = '${_email}'
    Execute JavaScript    document.querySelector('input[type="submit"]').click()
