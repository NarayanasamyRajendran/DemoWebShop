*** Settings ***
Documentation    To validate customer address information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx    sheet_name=Sheet1
Test Template    Validate the Customer Address with Exception

*** Variables ***
${_firstname}    
${_lastname}
${_email}
${_company}
${_city}
${_address}
${_zip}
${_phone}

*** Test Cases ***
Validate Customer Address with Exception
    ${_firstname}    ${_lastname}    ${_email}    ${_company}    ${_city}    ${_address}    ${_zip}    ${_phone}

*** Keywords ***
Validate the Customer Address with Exception
    [Documentation]    This test case will validate the customer address
    [Arguments]    ${_firstname}    ${_lastname}    ${_email}    ${_company}    ${_city}    ${_address}    ${_zip}    ${_phone}
    Run Keyword And Ignore Error    MyAccountResources.Fill login email
    Run Keyword And Ignore Error    MyAccountResources.Click the addresses button
    Run Keyword And Ignore Error    MyAccountResources.Click new address button in the address page
    Run Keyword And Ignore Error    MyAccountResources.Check whether the Add new address is visible
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('FirstName').value = '${_firstname}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('LastName').value = '${_lastname}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('Email').value = '${_email}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('Company').value = '${_company}'
    Run Keyword And Ignore Error    MyAccountResources.Click country in the dropdown
    Run Keyword And Ignore Error    MyAccountResources.Select country in the dropdown
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('City').value = '${_city}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('Address1').value = '${_address}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('Zip').value = '${_zip}'
    Run Keyword And Ignore Error    Execute JavaScript    document.getElementById('PhoneNumber').value = '${_phone}'
    Run Keyword And Ignore Error    Execute JavaScript    document.querySelector('input[type="submit"]').click()
