*** Settings ***
Documentation       Test Case Common User Page
Library             Selenium2Library
Resource            ../../PageObjects/UserPage/CommonUserPage/CommonUserKW.robot
Resource            ../../PageObjects/Common/common.robot
Variables           ../../PageObjects/UserPage/CommonUserPage/CommonUserUI.py
Test Setup         common.Open My Browser
Test Teardown      common.Close My Browser

*** Test Cases ***
Search with click input text
        [Documentation]                             Search with click input text
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Enter Text In Search           tủ lạnh
        Sleep                                       2s
        CommonUserKW.Click On Button Search
        common.Verify Current URL

Search with click PressKey
        [Documentation]                             Search with click PressKey
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Enter Text in Search           tủ lạnh
        Sleep                                       2s
        CommonUserKW.PK Search Keyboard
        common.Verify Current URL

Verify and click on button 'Compare'
        [Documentation]                             Verify and click on button 'Compare'
        [Tags]                                      Positive
        Verify Popup
        common.Click For Element                    ${compareBtn}

Verify and click on button 'Wishlist'
        [Documentation]                             Verify and click on button 'Wishlist'
        [Tags]                                      Positive
        Verify Popup
        common.Click For Element                    ${wishlistBtn}

Verify and click on button 'Cart'
        [Documentation]                             Verify and click on button 'Cart'
        [Tags]                                      Positive
        Verify Popup
        common.Click For Element                    ${CartBtn}

Click on Flash Sale in the menu
        [Documentation]                             Click on Flash Sale in the menu
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.MenuClick                      Flash deals

Verify button 'My Logout'
        [Documentation]                             Verify button 'My Logout'
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Verify Button Logout

User enter vaild email in 'Subscribe'
        [Documentation]                             User enter vaild email in 'Subscribe'
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Enter Email in Subsribe        abc@gmail.com
        CommonUserKW.Click On Button Subscribe
        common.Verify Current URL

User enter invaild email in 'Subscribe'
        [Documentation]                             User enter invaild email in 'Subscribe'
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Enter Email in Subsribe        abc
        CommonUserKW.Click On Button Subscribe
        common.Verify Current URL

Verify and click on button 'Apply Now'
        [Documentation]                             Verify and click on button 'Apply Now'
        [Tags]                                      Positive
        Verify Popup
        CommonUserKW.Verify Button Apply Now


