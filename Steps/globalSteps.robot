*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Input Username and Password
    [Arguments]    ${USERNAME}    ${USERPASS}
    Wait Until Element Is Visible    name:txtUsername
    Input Text    name:txtUsername    ${USERNAME}    clear=True
    Input Text    name:txtPassword    ${USERPASS}    clear=True
