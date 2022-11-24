*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
renseigner_etape2_1
#choix etape2
    WAIT UNTIL ELEMENT IS VISIBLE    ${btn_continuer_etape2}    ${ATT}
    click element    ${btn_continuer_etape2}
#Remplir page tache 2-1
    wait until element is visible    ${choix_chien}     ${Att}
    click element    ${choix_chien}
    wait until element is visible    ${nom_chien}   ${ATT}
    input text  ${nom_chien}    testautoYZ
    wait until element is visible    ${sex_chien}   ${ATT}
    click element    ${sex_chien}
    wait until element is visible    ${race_chien}  ${ATT}
    select from list by index    ${race_chien}  5
    wait until element is visible    ${couleur_chien}   ${ATT}
    select from list by index    ${couleur_chien}   6
    wait until element is visible    ${annnee_naissance_chien}  ${ATT}
    select from list by value   ${annnee_naissance_chien}    2021
    wait until element is visible    ${poids_chien}     ${ATT}
    input text    ${poids_chien}        12
    wait until element is visible    ${suivant_etape2_1}
    click element    ${suivant_etape2_1}
