*** Settings ***
Documentation       Header Ecommerces Anhtester
Library             SeleniumLibrary
Variables           CommonUserUI.py
Resource            ../../Common/common.robot
Resource            ../../AdminPage/CommonAdminPage/CommonAdminKW.robot

*** Variables ***
#${UserURL}          https://ecommerce.anhtester.com/
#${browser}          chrome

*** Keywords ***
Enter Text In Search
    [Arguments]                         ${textlInput}
    common.Input For Text               ${searchTxt}        ${textlInput}

Click On Button Search
    common.Click For Element            ${searchBtn}

PK Search Keyboard
    common.PressKeys Enter              ${searchBtn}

Click On Button Flash Sale
    common.Click For Element            ${flashSaleBtn}

Verify Button Logout
    Go To                               https://ecommerce.anhtester.com/login
    common.Login Successful             minhduong.lt2001@gmail.com      123456
    CommonAdminKW.Verify Icon Browser Website
    Switch Window                      url:https://ecommerce.anhtester.com/
    Click Element                       ${logOutBtn}

MenuClick
    [Arguments]                         ${menuBar}
    ${checkMenuFlashSale}=  Get Text    ${flashSaleBtn}
    Log                                 ${checkMenuFlashSale}
    common.Click For Element            ${flashSaleBtn}
    common.Click For Element            ${ChildMenuBtn}
    common.Verify Current URL

Enter Email In Subsribe
    [Arguments]                         ${email1lInput}
    common.Input For Text               ${userNameTxt}         ${userNameTxt}

Click on button Subscribe
    common.Click For Element            ${subBtn}

Verify button Apply now
    Page Should Contain Element         ${ApplyBtn}
    common.Click For Element            ${ApplyBtn}

Verify Popup
    Page Should Contain Element         ${CheckPopup}
    Click For Element                   ${ClosePop}






