*** Settings ***
Library    SeleniumLibrary
Resource    /Elements/Page_Se_Connecter.robot
Resource    /Configuration/Config.robot

*** Keywords ***
renseigner etape2_2
#Remplir page tache 2-2
   wait until element is visible    ${1}   ${ATT}
    click element    ${1}
    wait until element is visible    ${2}   ${ATT}
    click element    ${2}
    wait until element is visible    ${3}   ${ATT}
    click element    ${3}
    wait until element is visible    ${4}   ${ATT}
    click element    ${4}
    wait until element is visible    ${5}   ${ATT}
    click element    ${5}
    wait until element is visible    ${6}   ${ATT}
    click element    ${6}
    wait until element is visible    ${7}   ${ATT}
    click element    ${7}
    wait until element is visible    ${suivant_etape2_2}    ${ATT}
    click element    ${suivant_etape2_2}