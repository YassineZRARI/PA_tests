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



