*** Settings ***
Documentation       Test Case Login
Library             Selenium2Library
Library             DataDriver      ../../Report/LoginData.xlsx     sheet_name=Fail
Resource            ../../PageObjects/Common/LoginPage/LoginKW.robot
Resource            ../../PageObjects/Common/common.robot
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser
Test Template      Test Login

*** Test Cases ***
Login                                   ${emailInput}       ${passwordInput}

*** Keywords ***
Test Login
    [Arguments]                         ${emailInput}       ${passwordInput}
    Enter Email                         ${emailInput}
    Enter Password                      ${passwordInput}
    Click On Button Login

