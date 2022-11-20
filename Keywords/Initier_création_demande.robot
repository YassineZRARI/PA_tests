*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
initier_création_demande
#continuer l'authentification
    Wait until element is visible   ${btn_choix_profil}    ${ATT}
    Click Element   ${btn_choix_profil}
#début créarion demande
    wait until element is visible    ${mon_profil}  ${ATT}
    click element    ${mon_profil}
    wait until element is visible    ${choix_service}   ${ATT}
    click element    ${choix_service}
    wait until element is visible   ${choix_animaux}    ${ATT}
    CLICK ELEMENT    ${choix_animaux}
    wait until element is visible    ${btn_nouvelle_demande}    ${ATT}
    click element    ${btn_nouvelle_demande}