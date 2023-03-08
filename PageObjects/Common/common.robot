*** Settings ***
Library     Selenium2Library
Resource    LoginPage/LoginKW.robot

*** Variables ***
${URL}          https://ecommerce.anhtester.com/login

*** Keywords ***
Open My Browser
    ${options}=    Evaluate
...     sys.modules['selenium.webdriver'].ChromeOptions()
...     sys, selenium.webdriver
    Call Method    ${options}       add_extension  ${CURDIR}/../../Extension/ublock.crx
    Create WebDriver    Chrome      chrome_options=${options}
    Go To          ${URL}
    Maximize Browser Window
    Verify Current URL

Close My Browser
    Sleep  2s
    Close All Browsers

Click For Element
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    Click Element                       ${element}

Input For Text
    [Arguments]                         ${element}      ${input}
    Wait Until Element Is Visible       ${element}
    Input Text                          ${element}      ${input}

PressKeys Tab
    [Arguments]                         ${element}      ${input}
    Click For Element                   ${element}
    Press Keys                          ${element}      ${input}      TAB

PressKeys Enter
    [Arguments]                         ${element}
    Wait Until Element Is Visible       ${element}
    Press Keys                          ${element}      RETURN

Login Successful
    [Arguments]                         ${emailInput}   ${passwordInput}
    LoginKW.Enter Email                 ${emailInput}
    LoginKW.Enter Password              ${passwordInput}
    LoginKW.Click On Button Login

Verify Current URL
    ${curURL}=                          Get Location
    Log To Console                      ${curURL}
    [Return]                            ${curURL}