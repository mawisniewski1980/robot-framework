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
    Open Browser To Login Page
    Input Username    ${USERNAME}
    Input Password    ${USERPASS}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Valid Login Global Step
    [Documentation]    Test Two. Open test page and try to log in.
    [Tags]    LOGIN
    Open Browser To Login Page
    Input Username and Password    ${USERNAME}    ${USERPASS}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
