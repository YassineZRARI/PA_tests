*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
se_connecter
    [Arguments]     ${email_citoyen}    ${mdp}
    wait until element is visible    ${mon_compte}  ${ATT}
    Click Element    ${mon_compte}
    wait until element is visible    ${text_email_login_citoyen}    ${ATT}
    Input Text    ${text_email_login_citoyen}   ${email_citoyen}
    Wait until element is visible   ${text_email_login_citoyen}     ${ATT}
    Input Text      ${text_mdp_login_citoyen}   ${mdp}
    Wait until element is visible   ${btn_me_connecter}     ${ATT}
    Click Element       ${btn_me_connecter}