*** Settings ***
Library     SeleniumLibrary
Library     ../../CustomLibrary/CustomLibrary.py
Library    ../../Demo/lib/site-packages/robot/libraries/Collections.py
Resource    ../LoginPage/LoginKW.robot

*** Variables ***
${URL}          https://dev.accretech-nxgs-fe.aris-vn.com/

*** Keywords ***
Open My Browser
    ${options}=    Evaluate
...     sys.modules['selenium.webdriver'].ChromeOptions()
...     sys, selenium.webdriver
    Call Method   ${options}        add_extension  ${CURDIR}/../../CustomLibrary/ublock.crx
    Create WebDriver    Chrome      chrome_options=${options}
    Go To          ${URL}
    Maximize Browser Window
    Verify Current URL
    

Close My Browser
    Sleep  2s
    Close Browser

Click For Element
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    Click Element                       ${element}

Input For Text
    [Arguments]                         ${element}      ${input}
    Wait Until Element Is Visible       ${element}
    Input Text                          ${element}      ${input}

Verify Current URL
    ${curURL}=                          Get Location
    Log To Console                      ${curURL}
    [Return]                            ${curURL}

Get Text From Text Box
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    ${text}=    Get Text                ${element}
    [Return]    ${text}

   
