*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
vérifier_information_description_animal_sommaire
    wait until element is visible   ${titre_description_animal_sommaire}        ${ATT}
    element text should be      ${titre_description_animal_sommaire}    Description de l'animal
    scroll element into view    ${nom_animal_sommaire}
    wait until element is visible   ${nom_animal_sommaire}      ${ATT}
    element text should be      ${nom_animal_sommaire}    testautoYZ
    wait until element is visible    ${sexe_animal_sommaire}    ${ATT}
    element text should be    ${sexe_animal_sommaire}       Mâle
    wait until element is visible    ${race_animal_sommaire}        ${ATT}
    element text should be    ${race_animal_sommaire}       Autre: other
    wait until element is visible    ${couleur_animal_sommaire}        ${ATT}
    element text should be    ${couleur_animal_sommaire}       beige - gris
    wait until element is visible    ${anneé_naissance_animal_sommaire}       ${ATT}
    element text should be    ${anneé_naissance_animal_sommaire}       2021
    wait until element is visible    ${poids_animal_naissance}       ${ATT}
    element text should be    ${poids_animal_naissance}       12 kilogrammes

vérifier_information_caracteristique_sommaire
    scroll element into view    ${micropuce_num_sommaire}
    wait until element is visible       ${titre_caracteristique_animal_sommaire}        ${ATT}
    element text should be      ${titre_caracteristique_animal_sommaire}        Caractéristiques
    wait until element is visible    ${sterilise_sommaire}      ${ATT}
    element text should be      ${sterilise_sommaire}     Oui
    element should be visible    ${sterilise_preuve}

    wait until element is visible    ${micropuce_sommaire}      ${ATT}
    element text should be      ${micropuce_sommaire}     Oui
    element should be visible    ${micropuce_preuve_sommaire}
    element should be visible    ${micropuce_num_sommaire_label}
    element text should be    ${micropuce_num_sommaire}     111111

    wait until element is visible   ${distinctifs_sommaire}     ${ATT}
    element text should be    ${distinctifs_sommaire}       Non

    wait until element is visible    ${provenance_animal_sommaire}      ${ATT}
    element text should be      ${provenance_animal_sommaire}    Inconnu

    wait until element is visible   ${permis_antécédents_sommaire}      ${ATT}
    element text should be    ${permis_antécédents_sommaire}        Inconnu

vérifier_information_gratuité_sommaire
    [arguments]    ${gratuit_oui_non}
    run keyword if      '${gratuit_oui_non}' == 'oui'       verifie_gratuite_oui      ELSE     verifie_gratuite_non
verifie_gratuite_oui
    scroll element into view    ${gratuité_animal_oui_sommaire}
    wait until element is visible    ${titre_gratuité_animal_sommaire}      ${ATT}
    element text should be    ${titre_gratuité_animal_sommaire}     Conditions de gratuité
    wait until element is visible    ${gratuité_animal_oui_sommaire}       ${ATT}
    element text should be    ${gratuité_animal_oui_sommaire}       Oui
    element should be visible   ${gratuité_animal_oui_preuve_sommaire}
verifie_gratuite_non
    scroll element into view    ${gratuité_animal_non_sommaire}
    wait until element is visible    ${titre_gratuité_animal_sommaire}      ${ATT}
    element text should be    ${titre_gratuité_animal_sommaire}     Conditions de gratuité
    wait until element is visible    ${gratuité_animal_non_sommaire}       ${ATT}
    element text should be    ${gratuité_animal_non_sommaire}       Aucune
    element should not be visible    ${gratuité_animal_oui_preuve_sommaire}

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

