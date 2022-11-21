*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
payer_en_ligne
#page 1 paiement
    wait until element is visible   ${frame1}       ${ATT}
    Select frame    ${frame1}
    wait until element is visible    ${prenom}      ${ATT}
    input text      ${prenom}    TEST
    wait until element is visible    ${nom_de_famille}      ${ATT}
    input text    ${nom_de_famille}     TEST
    wait until element is visible    ${courriel}        ${ATT}
    input text    ${courriel}       TEST@TEST.com
    wait until element is visible    ${adresse_civique}     ${ATT}
    input text    ${adresse_civique}       TEST
    wait until element is visible    ${ville}       ${ATT}
    input text    ${ville}      TEST
    wait until element is visible    ${province}    ${ATT}
    select from list by index    ${province}        6
    wait until element is visible    ${code_postal}     ${ATT}
    input text    ${code_postal}        H3C2N5
    wait until element is visible    ${titulaire}       ${ATT}
    input text    ${titulaire}      TEST
    wait until element is visible    ${type_de_carte}   ${ATT}
    select from list by index    ${type_de_carte}       1
    wait until element is visible    ${numero_de_la_carte}      ${ATT}
    input text    ${numero_de_la_carte}     4530910000012345
    wait until element is visible    ${annee_expiration}    ${ATT}
    select from list by index    ${annee_expiration}        5
    wait until element is visible    ${btn_ok}      ${ATT}
    click element       ${btn_ok}
    unselect frame
#page 2 paiement
    wait until element is visible    ${frame1}      ${ATT}
    select frame    ${frame1}
    wait until element is visible    ${numero_de_verification}      ${ATT}
    input text    ${numero_de_verification}     123
    wait until element is visible   ${btn_payer}        ${ATT}
    click element    ${btn_payer}
vérifier_le_paiement
    page should contain    403 Forbidden