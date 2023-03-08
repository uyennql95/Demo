*** Settings ***
Library         Selenium2Library
Variables       CommonAdminUI.py
Resource        ../../Common/common.robot

*** Keywords ***

Child Menu Click
    [Arguments]                     ${menuChild}
    ${checkMenuProduct}=  Get Text  ${menuProduct}
    Log                             ${checkMenuProduct}
    common.Click For Element        ${menuProduct}
    ${child}=       Set Variable    xpath://span[normalize-space()='${menuChild}']
    common.Click For Element        ${child}
    common.Verify Current URL

Verify Icon Browser Website
    Page Should Contain Element     ${browserBtn}
    common.Click For Element        ${browserBtn}

Verify Button Clear Cache
    Page Should Contain Element     ${clearCacheBtn}
    common.Click For Element        ${clearCacheBtn}
    Sleep                           2s
    ${cacheCheck}=     Get Text     ${cacheTxt}
    Log                             ${cacheCheck}

Verify Flag
    common.Click For Element        ${flagIcon}
    ${icon}=   Get Element Count    ${flag}
    Log                             ${icon}

Verify 12 Product
    Page Should Contain Element     ${productCheck}
    ${product}=       Get Text      ${productCheck}
    Log                             ${product}


Verify icon '<'
    Page Should Contain Element     ${iconRight}
    common.Click For Element        ${iconRight}

Verify icon '>'
    Page Should Contain Element     ${iconLeft}
    common.Click For Element        ${iconLeft}

Search menu
    [Arguments]                     ${searchInput}
    common.Input For Text           ${searchTxt}        ${searchInput}

