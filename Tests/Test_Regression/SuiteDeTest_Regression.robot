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
TC1_Régression_Global_1
    [tags]    test
    se_connecter    ${email_citoyen}    ${mdp}
    initier_création_demande
    renseigner_etape2_1
    renseigner_etape2_2
    renseigner_etape2_3
    renseigner_etape3_1     non
    #etape3_2
    vérifier_information_description_animal_sommaire
    vérifier_information_caracteristique_sommaire
    vérifier_information_gratuité_sommaire      non
    modifier_description_animal_sommaire
    vérifier_modification_description_animal_sommaire
    vérifier_popup_caracteristiques_sommaire
    soumettre_demande
    vérifier_soumission_demande



