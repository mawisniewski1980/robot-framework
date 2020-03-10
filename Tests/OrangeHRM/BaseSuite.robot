*** Settings ***
Documentation     Check status page
Default Tags      STATUS
Resource          ../../CommonSetup.robot
Resource          ../../Steps/CommonStep.robot
Resource          ../../Steps/globalSteps.robot
Resource          ../../variables/OrangeHrmVariables.robot

*** Test Cases ***
CheckStatus
    [Documentation]    User Log In with correct credentials
    Check http response success status    orangehrmlive    ${URL}
