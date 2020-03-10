*** Settings ***
Documentation     Common steps for all tests
Resource          ../CommonSetup.robot
Resource          ../variables/OrangeHrmVariables.robot

*** Keywords ***
Set Username
    [Arguments]    ${locator}    ${user}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${user}    clear=True

Set Password
    [Arguments]    ${locator}    ${pass}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${pass}    clear=True

Click the button
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Click Button    ${locator}

Title page should be
    [Arguments]    ${title}
    Title Should Be    ${title}

Element should contain text
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}
    Element Should Contain    ${locator}    ${text}
