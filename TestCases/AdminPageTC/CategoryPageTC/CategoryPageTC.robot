*** Setting ***
Library   Selenium
Resource  ../../../PageObjects/AdminPage/CategoryPage/CategoryKW.robot
Resource  ../../../PageObjects/Common/common.robot
Test Setup      CategoryKW.Set Up PreCondition CategoryPage
Test Teardown   common.Close My Browser

*** Test Case ***
Check links opening in other tab when click "Add New Category" button.
    [Documentation]     Check links opening in other tab when click "Add New Category" button.
    common.Click For Element            ${addNewCategory}
    Wait Until Page Contains Element    ${categoryInformation}

Run filter of name with input data.
    [Documentation]     Run filter of name with input data.
    common.Input For Text      ${inputButton}      moon
    common.PressKeys Enter     ${inputButton}

Run filter of name with empty data.
    [Documentation]     Run filter of name with empty data.
   common.PressKeys Enter      ${inputButton}

Check show detail of a category name function.
    [Documentation]     Check show detail of a category name function.
    common.Click For Element                ${firstPlusButton}
    Wait Until Element Is Visible           ${firstParentCategory}      5s

Check links opening in other tab /window when click "Edit" button.
    [Documentation]     Check links opening in other tab /window when click "Edit" button.
    common.Click For Element            ${firstEditButton}
    Wait Until Page Contains Element    ${categoryInformation}

Check modal dialog box when clicking delete function is appeared or not.
    [Documentation]     Check modal dialog box when clicking delete function is appeared or not.
    common.Click For Element                ${firstDeleteButton}
    Wait Until Element Is Visible           ${deleteModal}

Check "Cancel" button when clicking delete function.
    [Documentation]     Check "Cancel" button when clicking delete function.
    common.Click For Element                ${firstDeleteButton}
    Wait Until Element Is Visible           ${deleteModal}
    SLeep  2s
    common.Click For Element                ${cancelDeleteButton}
    Wait Until Element Is Not Visible       ${deleteModal}

Check "Delete" button when clicking delete function.
    [Documentation]     Check "Delete" button when clicking delete function.
    Click Element                           ${firstDeleteButton}
    Wait Until Element Is Visible           ${deleteModal}
    common.Click For Element                ${pressDeleteButton}
    Wait Until Element Is Not Visible       ${deleteModal}
    Wait Until Element Is Visible           ${alertLocation}   5s
    Element Text Should Be                  ${alertLocation}   Category has been deleted successfully

Check when click the "next page" at the bottom of the page.
    [Documentation]     Check when click the "next page" at the bottom of the page.
    common.Click For Element                ${pageIndex}
    Wait Until Element Is Visible           ${inputButton}
    Location Should Be                      ${uRLIndex}

Check when click the index page at the bottom of the page.
    [Documentation]     Check when click the index page at the bottom of the page.
    common.Click For Element                ${pageIndex}
    Wait Until Element Is Visible           ${inputButton}
    Location Should Be                      ${uRLIndex}

