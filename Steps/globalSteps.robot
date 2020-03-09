*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Set Username Password and Submit
    [Arguments]    ${USERNAME}    ${USERPASS}
    Wait Until Element Is Visible    name:txtUsername
    Set Username    ${USERNAME}
    Set Password    ${USERPASS}
    Submit Credentials
