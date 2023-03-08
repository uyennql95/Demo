*** Settings ***
Library     Selenium2Library
Resource    ../../../PageObjects/Common/common.robot
Variables   CategoryUI.py

*** Keywords ***
Click FilterItem
    [Arguments]     ${filterLocation}   ${tagName}  ${filterName}
    ${element}=     Set Variable        (${filterLocation}/descendant::${tagName}\[contains(text(),"${filterName}")])[1]
    common.Click For Element            ${element}
    Sleep  1s

Set Up PreCondition CategoryPage
    common.Open My Browser
    common.Login Successful             ngoviettrung9x@gmail.com    123456
    Click FilterItem                    ${navbar}    span    Products
    Click FilterItem                    ${navbar}    span    Category
    Sleep  1s