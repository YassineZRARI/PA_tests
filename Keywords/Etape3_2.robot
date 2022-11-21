*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
vérifier_information_etape3_2
#Vérifier que les infos idem que avant "description animal"

#Verifier que le choix est idem dans le sommaine
    wait until element is visible    ${modifier_caracteristiques}      ${ATT}
    scroll element into view    ${modifier_caracteristiques}
    wait until element is visible    ${micropuce_sommaire}      ${ATT}
    element text should be    ${micropuce_sommaire}       Oui
    element should be visible    ${micropuce_preuve_sommaire}
    element should be visible    ${micropuce_num_sommaire_label}
    element text should be       ${micropuce_num_sommaire}            111111


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

