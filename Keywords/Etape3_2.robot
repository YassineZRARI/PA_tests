*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
vérifier_information_etape3_2
    #Vérifier que les info idem que avant (à faire)

soumettre_demande
    wait until element is visible    ${btn_soumettre}   ${ATT}
    scroll element into view    ${btn_soumettre}
    wait until element is visible    ${declaration_coche}   ${ATT}
    sleep   5
    click element at coordinates    ${declaration_coche}    ${-10}     ${-10}
    sleep    5
    click element at coordinates    ${condition_coche}    ${-1}     ${-1}
    wait until element is enabled    ${btn_soumettre}   ${ATT}
    click element    ${btn_soumettre}
vérifier_soumission_demande
    wait until element is visible       ${btn_toutes_mes_demandes}      ${ATT}
    page should contain    Numéro de la demande

