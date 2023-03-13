*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             SeleniumLibrary
Library             ../../CustomLibrary/CustomLibrary.py
Variables           LoginUI.py
Variables           ../../Data/RKD-605-nxg-auth/UI/nxg-auth.yaml
Resource            ../Common/common.robot

*** Keywords ***
Click on userName field
    common.Click For Element             ${userNameTxt}

Get list userName
    Wait Until Element Is Visible    ${userNameListBox}
    ${userNameList}=   Get List Value    ${userNameListBox}
    [Return]   ${userNameList}

Verify UserName List Display Correct
    ${userNameList}=   Get list userName
    ${list}=  Create List       @{7462.userNamelistExpected}
    Lists Should Be Equal       ${userNameList}    ${list}
    

Enter Password
    [Arguments]                          ${passwordInput}
    common.Input For Text                ${passwordTxt}      ${passwordInput}

Click On Button Login
    common.Click For Element             ${loginBtn}

Select an userName
    [Arguments]      ${selectedUserName}
    Select By Value On List          ${userNameListBox}     ${selectedUserName}
   

Verify UserName Display Correctly On Textbox
    [Arguments]      ${userName}
    ${text}=   Get Text From Text Box    ${userNameTxt}
    Should Be Equal    ${userName}    ${text}

Verify Username Display Correct With Each Selection
    FOR    ${userName}    IN    @{7462.userNamelistExpected}
        Run Keywords    Click on userName field   
        ...   AND   Select an userName    ${userName}           
        ...   AND   Verify UserName Display Correctly On Textbox    ${userName}   
    END