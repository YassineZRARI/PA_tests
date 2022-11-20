*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
renseigner etape2_1
#choix etape3
    wait until element is visible   ${btn_continuer_etape3}     ${ATT}
    scroll element into view    ${btn_continuer_etape3}
    wait until element is visible    ${btn_continuer_etape3}    ${ATT}
    click element    ${btn_continuer_etape3}
#Remplir page tache 3-1
    wait until element is visible    ${gratuite_oui}    ${ATT}
    click element    ${gratuite_oui}
    wait until element is visible    ${pj_gratuite_oui}    ${ATT}
    choose file    ${pj_gratuite_oui}  C://Users/yassine.zrari/Desktop/SDSR/BO30.pdf
    #wait until element is visible    ${gratuite_non}    ${ATT}
    #click element    ${gratuite_non}
    #WAIT UNTIL ELEMENT IS VISIBLE    ${refuge_non}      ${ATT}
    #click element       ${refuge_non}
    #wait until element is visible    ${itinerance}  ${ATT}
    #click element    ${itinerance}
    #wait until element is visible    ${avec_refuge_non}     ${ATT}
    #click element    ${avec_refuge_non}
    scroll element into view    ${suivant_etape3_1}
    wait until element is visible    ${suivant_etape3_1}    ${ATT}
    click element    ${suivant_etape3_1}