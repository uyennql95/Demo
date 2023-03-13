*** Settings ***
Documentation       Test Case Login
Library             ../../CustomLibrary/CustomLibrary.py
#Library             DataDriver      ../../Report/LoginData.xlsx     sheet_name=Fail
Resource            ../../../PageObjects/LoginPage/LoginKW.robot
Resource            ../../../PageObjects/Common/common.robot
Resource            ../../../PageObjects/LoginPage/LoginKW.robot
Test Setup          common.Open My Browser
Test Teardown       common.Close My Browser
# Test Template      Test Login

*** Test Cases ***
RKD-7462-Verify that show list username with click on Username field
    [Documentation]  List user name display correctly
    [Tags]  RKD-7462
    Click on userName field
    Verify UserName List Display Correct

RKD-7463-Verify that can select username in list username
    [Documentation]  Can select an username in list username  
    ...              and user name display correct
    [Tags]  RKD-7463
    Verify Username Display Correct With Each Selection

RKD-7469-Verify that password is hidden when user inputs
    [Documentation]  Can select an username in list username  
    ...              and user name display correct
    [Tags]  RKD-7469
    Verify Username Display Correct With Each Selection
            
    
