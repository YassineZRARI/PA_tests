*** Settings ***
Library    SeleniumLibrary
Resource    /Configuration/Config.robot

*** Keywords ***
setup
    [Arguments]     ${Navigateur}
    Open Browser  ${URL}    ${Navigateur}
    Maximize Browser Window
    Go To   ${URL1}