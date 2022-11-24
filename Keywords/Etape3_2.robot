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
##########################################
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
########################################################
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

modifier_popup_description_animal_sommaire
    scroll element into view    ${modifier_animal}
    wait until element is visible       ${modifier_animal}      ${ATT}
    click element    ${modifier_animal}
    page should contain    Description de l'animal
    wait until element is visible    ${modifier_nom_animal}     ${ATT}
    clear element text    ${modifier_nom_animal}
    sleep    3
    Input text    ${modifier_nom_animal}    Nom_modifié
    wait until element is visible    ${modifier_sex_femelle}    ${ATT}
    click element    ${modifier_sex_femelle}
    #à utiliser si on choisit "other"= index 3
    #wait until element is visible    //button[normalize-space()='Voir la liste des races']      ${ATT}
    #click element    //button[normalize-space()='Voir la liste des races']
    select from list by index    ${modifier_race}       4
    wait until element is visible    ${modifier_couleur}    ${ATT}
    select from list by index    ${modifier_couleur}    2
    wait until element is visible    ${modifier_annee_naissance}    ${ATT}
    select from list by value   ${modifier_annee_naissance}     2022
    wait until element is visible    ${modifier_poids}      ${ATT}
    input text    ${modifier_poids}     10
    wait until element is visible    ${sauvegarder_modification_animal}     ${ATT}
    click element    ${sauvegarder_modification_animal}

vérifier_modification_popup_description_animal_sommaire
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


vérifier_popup_caracteristiques_sommaire
    wait until element is visible    ${modifier_caracteristiques}       ${ATT}
    scroll element into view    ${modifier_caracteristiques}
    click element       ${modifier_caracteristiques}

#stérilisation
    wait until element is visible    ${popup_stérilisé?}      ${ATT}
    element text should be    ${popup_stérilisé?}         Votre animal est-il stérilisé

    element should be visible    ${popup_stérilisé_oui}
    element text should be    ${popup_stérilisé_oui}      Oui
    Radio Button Should Be Set To   sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung        yes

    element should be visible    ${stérilisation_Non, la stérilisation est contre-indiqué pour mon animal}
    element text should be    ${stérilisation_Non, la stérilisation est contre-indiqué pour mon animal}       Non, la stérilisation est contre-indiqué pour mon animal

    element should be visible    ${stérilisation_Non, mon animal est enregistré auprès d'une association de races reconnue}
    element text should be    ${stérilisation_Non, mon animal est enregistré auprès d'une association de races reconnue}       Non, mon animal est enregistré auprès d'une association de races reconnue

    element should be visible    ${stérilisation_Non, il est âgé de moins de 6 mois}
    element text should be    ${stérilisation_Non, il est âgé de moins de 6 mois}       Non, il est âgé de moins de 6 mois

    element should be visible    ${stérilisation_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}
    element text should be    ${stérilisation_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}       Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois



#micropuce
    wait until element is visible    ${micropuce?}      ${ATT}
    element text should be    ${micropuce?}         Est-il micropucé?

    element should be visible    ${micropuce_oui_1}
    element text should be    ${micropuce_oui_1}        Oui
    Radio Button Should Be Set To   microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung        yes

    element should be visible    ${micropuce_Non, le micropuçage est contre-indiqué pour mon animal}
    element text should be    ${micropuce_Non, le micropuçage est contre-indiqué pour mon animal}       Non, le micropuçage est contre-indiqué pour mon animal

    element should be visible    ${micropuce_Non, il est âgé de moins de 6 mois}
    element text should be    ${micropuce_Non, il est âgé de moins de 6 mois}       Non, il est âgé de moins de 6 mois

    element should be visible    ${micropuce_Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}
    element text should be    ${micropuce_Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}       Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois

    scroll element into view    ${micropuce_oui_popup}
    wait until element is visible        ${micropuce_oui_popup}       ${ATT}
    scroll element into view        ${micropuce_num_popup}
    radio button should be set to        microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung       yes

    scroll element into view    ${micropuce_num_popup}
    wait until element is visible       ${micropuce_num_popup}        ${ATT}
    element attribute value should be      ${micropuce_num_popup}       value       111111

    scroll element into view    ${distinctif_popup}
    scroll element into view    ${micropuce_document_label_popup}
    element should be visible   ${micropuce_document_label_popup}
    element text should be      ${micropuce_document_label_popup}       Document

    scroll element into view    ${distinctif_popup}
    element should be visible       ${micropuce_document_supprimerremplacer_popup}

    click element    ${fermer_modifier_caracteristiques}
