*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
renseigner_etape2_3
#Remplir page tache 2-3
    wait until element is visible    ${sterilise_oui}   ${ATT}
    click element    ${sterilise_oui}
    choose file    ${pj_sterilise_oui}  C://Users/yassine.zrari/Desktop/SDSR/BO30.pdf
    wait until element is visible    ${micropuce_oui}   ${ATT}
    click element    ${micropuce_oui}
    wait until element is visible    ${num_micropuce}   ${ATT}
    input text    ${num_micropuce}  111111
    wait until element is visible    ${pj_micropuce_oui}    ${ATT}
    choose file    ${pj_micropuce_oui}  C://Users/yassine.zrari/Desktop/SDSR/BO30.pdf
    #dynamique xpath : //input[@id='microchippedAfter2022RulesTooYoungTemporarely_0'1/2/3]
    wait until element is visible    ${distinctifs_non}     ${ATT}
    CLICK ELEMENT    ${distinctifs_non}
    wait until element is visible    ${vaccin_rage_non}     ${ATT}
    click element    ${vaccin_rage_non}
    wait until element is visible    ${lieu_jenesaispas}    ${ATT}
    click element    ${lieu_jenesaispas}
    wait until element is visible   ${enregistre_jenesaispas}       ${ATT}
    click element    ${enregistre_jenesaispas}
    wait until element is enabled    ${suivant_etape2_3}    ${ATT}
    click element    ${suivant_etape2_3}