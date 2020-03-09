*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Setup browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Set Username
    [Arguments]    ${USERNAME}
    Input Text    name:txtUsername    ${USERNAME}    clear=True

Set Password
    [Arguments]    ${USERPASS}
    Input Text    name:txtPassword    ${USERPASS}    clear=True

Submit Credentials
    Click Button    id:btnLogin

Welcome Page Should Be Open
    Wait Until Element Is Visible    id:menu_dashboard_index
    Title Should Be    OrangeHRM
