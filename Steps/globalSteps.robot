*** Settings ***
Documentation     Global steps for all tests
Resource          ../CommonSetup.robot
Resource          ../variables/OrangeHrmVariables.robot
Resource          CommonStep.robot

*** Keywords ***
Check http response success status
    [Arguments]    ${page name}    ${url}
    [Documentation]    The HTTP 200 OK success status response code indicates that the request has succeeded.
    Create Session    ${page name}    ${url}
    ${resp}=    Get Request    ${page name}    /
    Should Be Equal As Strings    ${resp.status_code}    200
    Log    Checking ${url} page status is ${resp.status_code}

Open and maximize browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Set Username Password and Submit
    [Arguments]    ${user}    ${pass}
    Set Username    name=txtUsername    ${user}
    Set Password    name=txtPassword    ${pass}
    Click the button    id=btnLogin
