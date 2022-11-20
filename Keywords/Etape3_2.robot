*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
modifier_section_description_animal
    wait until element is visible       ${modifier_animal}      ${ATT}
    click element    ${modifier_animal}
    page should contain    Description de l'animal
    wait until element is visible    ${modifier_nom_animal}     ${ATT}
    clear element text    ${modifier_nom_animal}
    sleep    3
    Input text    ${modifier_nom_animal}    Nom_modifié
    wait until element is visible    ${modifier_sex_femelle}    ${ATT}
    click element    ${modifier_sex_femelle}
    select from list by index    ${modifier_race}       4
    wait until element is visible    ${modifier_couleur}    ${ATT}
    select from list by index    ${modifier_couleur}    2
    wait until element is visible    ${modifier_annee_naissance}    ${ATT}
    select from list by value   ${modifier_annee_naissance}     2022
    wait until element is visible    ${modifier_poids}      ${ATT}
    input text    ${modifier_poids}     10
    wait until element is visible    ${sauvegarder_modification_animal}     ${ATT}
    click element    ${sauvegarder_modification_animal}

vérifier_modification_description_animal
    wait until element is not visible    ${sauvegarder_modification_animal}
    wait until element is enabled       ${modifier_animal}      ${ATT}
    click element    ${modifier_animal}
    page should contain    Description de l'animal
    element attribute value should be    ${modifier_nom_animal}     value       Nom_modifié
    page should contain        Nom_modifié
    Radio Button Should Be Set To   gender      female
    element attribute value should be    ${modifier_race}    value       barbet
    List Selection Should Be    ${modifier_couleur}     beige - blanc
    List Selection Should Be    ${modifier_annee_naissance}    2022
    element attribute value should be    ${modifier_poids}     value       10
    click element    ${fermer_modifier_animal}
