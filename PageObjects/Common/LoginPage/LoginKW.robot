*** Settings ***
Documentation       Keyword Login page Ecommerces Anhtester
Library             Selenium2Library
Variables           LoginUI.py
Resource            ../common.robot

*** Keywords ***
Enter Email
    [Arguments]                        ${emailInput}
    common.Input For Text              ${emailTxt}         ${emailInput}

Enter Password
    [Arguments]                         ${passwordInput}
    common.Input For Text               ${passwordTxt}      ${passwordInput}

Click On Button Login
    common.Click For Element            ${loginBtn}

PK TAB Email/Password Keyboard
    [Arguments]                         ${emailInput}       ${passwordInput}
    common.PressKeys Tab                ${emailTxt}         ${emailInput}
    common.PressKeys Tab                ${passwordTxt}      ${passwordInput}

PK Login keyboard
    common.PressKeys Enter              ${loginBtn}

Click On Forgot Password
    common.Click For Element            ${forgotBtn}


