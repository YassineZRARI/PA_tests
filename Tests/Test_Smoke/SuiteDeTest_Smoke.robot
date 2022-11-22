*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Se_Connecter.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Paiement.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Initier_création_demande.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Etape2_1.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Etape2_2.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Etape2_3.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Etape3_1.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Etape3_2.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Se_Connecter.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Paiement.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Initier_création_demande.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Etape2_1.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Etape2_2.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Etape2_3.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Etape3_1.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Etape3_2.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Configuration/Setup.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Configuration/Config.robot

Test Setup     setup    ${Navigateur}

*** Test Cases ***

TC1_Smoke_authentification_avec_succès
    se_connecter    ${email_citoyen}    ${mdp}
    wait until element is visible       ${btn_choix_profil}     ${ATT}
    Page should contain    Choisir un profil

TC2_Smoke_authentification_avec_faux_email
    se_connecter    Test@test.com   ${mdp}
    page should contain     Oups! Il semble y avoir une erreur dans le courriel ou le mot de passe. Avez-vous oublié votre mot de passe?

TC3_Smoke_authentification_avec_faux_mdp
    se_connecter    ${email_citoyen}        test123
    page should contain     Oups! Il semble y avoir une erreur dans le courriel ou le mot de passe. Avez-vous oublié votre mot de passe?

TC4_Smoke_création_demande_gratuite
    [Tags]    test
    se_connecter    ${email_citoyen}    ${mdp}
    initier_création_demande
    renseigner_etape2_1
    renseigner_etape2_2
    renseigner_etape2_3
    renseigner_etape3_1     oui
    vérifier_information_description_animal_sommaire
    vérifier_information_caracteristique_sommaire
    vérifier_information_gratuité_sommaire
    soumettre_demande
    vérifier_soumission_demande

TC5_Smoke_création_demande_avec_paiement
    [Tags]    s
    se_connecter    ${email_citoyen}    ${mdp}
    initier_création_demande
    renseigner_etape2_1
    renseigner_etape2_2
    renseigner_etape2_3
    renseigner_etape3_1     non
    vérifier_information_description_animal_sommaire
    vérifier_information_caracteristique_sommaire
    vérifier_information_gratuité_sommaire
    payer_en_ligne
    vérifier_le_paiement







