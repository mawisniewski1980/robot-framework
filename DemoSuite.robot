*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          variables/demoSuiteVariables.robot
Resource          Steps/commonSteps.robot
Resource          Steps/globalSteps.robot

*** Variables ***

*** Test Cases ***
Valid Login
    [Documentation]    Test One. Open test page and try to log in.
    [Tags]    LOGIN
    [Setup]    Setup browser
    Set Username    ${USERNAME}
    Set Password    ${USERPASS}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Valid Login Global Step
    [Documentation]    Test Two. Open test page and try to log in.
    [Tags]    LOGIN
    [Setup]    Setup browser
    Set Username Password and Submit    ${USERNAME}    ${USERPASS}
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Invalid Login
    [Documentation]    Test Three. Open test page and try to log in with invalid credentials.
    [Tags]    LOGIN
    [Setup]    Setup browser
    Set Username Password and Submit    ${USERNAME}    blebleble
    Element Text Should Be    id:spanMessage    Invalid credentials
    [Teardown]    Close Browser
