*** Settings ***
Documentation     Login tests
Suite Setup       Open and maximize browser    ${URL}    ${BROWSER}
Suite Teardown    Close All Browsers
Default Tags      LOGIN
Resource          ../../CommonSetup.robot
Resource          ../../Steps/CommonStep.robot
Resource          ../../Steps/globalSteps.robot
Resource          ../../variables/OrangeHrmVariables.robot

*** Test Cases ***
Valid Login
    [Documentation]    Test One. Open test page and try to log in.
    [Tags]    LOGIN
    Set Username    name=txtUsername    ${USERNAME}
    Set Password    name=txtPassword    ${USERPASS}
    Click the button    id=btnLogin
    Title page should be    OrangeHRM
    Element should contain text    id=welcome    ${USERNAME}

Valid Login Global Step List
    [Documentation]    Test Two. Open test page and try to log in.
    [Tags]    LOGIN
    Set Username Password and Submit    @{CREDENTIALS LIST}[0]    @{CREDENTIALS LIST}[1]
    Title page should be    OrangeHRM
    Element should contain text    id=welcome    @{CREDENTIALS LIST}[0]

Invalid Login
    [Documentation]    Test Three. Open test page and try to log in with invalid credentials.
    [Tags]    LOGIN
    Set Username Password and Submit    ${USERNAME}    blebleble
    Element should contain text    id:spanMessage    Invalid credentials

Valid Login Global Step Dict
    [Documentation]    Test Four. Open test page and try to log in.
    [Tags]    LOGIN
    Set Username Password and Submit    &{CREDENTIALS DICT}[User]    &{CREDENTIALS DICT}[Pass]
    Title page should be    OrangeHRM
    Element should contain text    id=welcome    &{CREDENTIALS DICT}[User]
