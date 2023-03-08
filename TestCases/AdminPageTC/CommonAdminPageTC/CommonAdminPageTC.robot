*** Settings ***
Library             Selenium2Library
Resource            ../../../PageObjects/Common/LoginPage/LoginKW.robot
Resource            ../../../PageObjects/AdminPage/CommonAdminPage/CommonAdminKW.robot
Resource            ../../../PageObjects/Common/common.robot
Test Setup         common.Open My Browser
Test Teardown       common.Close My Browser

*** Test Cases ***
User click on button 'Browser Website'
    [Documentation]                     User click on button 'Browser Website'
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify Icon Browser Website
    common.Verify Current URL

User click on button 'Clear Cache'
    [Documentation]                     User click on button 'Clear Cache'
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify Button Clear Cache

User select flag on the screen 'Dashboard'
    [Documentation]                     User select flag on the screen 'Dashboard'
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify Flag

Verify product on the screen
    [Documentation]                     Verify product on the screen
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify 12 Product

Verify and click on button '<'
    [Documentation]                     Verify and click on button '<'
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify icon '<'

Verify and click on button '>'
    [Documentation]                     Verify and click on button '>'
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Verify icon '>'

Search menu in left corner of the screen
    [Documentation]                     Search menu in left corner of the screen
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Search Menu           Products

User click on 'Add New Product' in the menu
    [Documentation]                     User click on 'Add New Product' in the menu
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Child Menu Click      Add New Product

User click on 'All products' in the menu
    [Documentation]                     User click on 'All products' in the menu
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Child Menu Click      All products

User click on 'Category' in the menu
    [Documentation]                     User click on 'Category' in the menu
    [Tags]                              Positive
    common.Login Successful             tienthanhxh2000@gmail.com   123456
    CommonAdminKW.Child Menu Click      Category
