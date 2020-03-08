*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
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
