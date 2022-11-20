*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Keywords/Se_Connecter.robot
Resource    C:/Users/yassine.zrari/PycharmProjects/PA_tests/Elements/Page_Se_Connecter.robot
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
    renseigner etape2_1
    renseigner etape2_2
    renseigner etape2_3

