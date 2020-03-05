*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}            https://opensource-demo.orangehrmlive.com/
${BROWSER}        Chrome
${USERNAME}       Admin
${USERPASS}       admin123

*** Test Cases ***
Valid Login
    [Documentation]    Test One. Open test page and try to log in.
    Open Browser To Login Page
    Input Username    ${USERNAME}
    Input Password    ${USERPASS}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    id:divLoginImageContainer
    Title Should Be    OrangeHRM

Input Username
    [Arguments]    ${USERNAME}
    Input Text    name:txtUsername    ${USERNAME}    clear=True

Input Password
    [Arguments]    ${USERPASS}
    Input Text    name:txtPassword    ${USERPASS}    clear=True

Submit Credentials
    Click Button    id:btnLogin

Welcome Page Should Be Open
    Wait Until Element Is Visible    id:menu_dashboard_index
    Title Should Be    OrangeHRM
