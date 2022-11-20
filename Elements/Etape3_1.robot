
*** Variables ***
${btn_continuer_etape3}=    //button[contains(text(),'Continuer')]
#Page etape3_1
${gratuite_non}=    //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-situation[1]/div[1]/div[1]/article[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[1]/div[1]/form[1]/vdm-radio[1]/div[1]/div[2]/label[1]
${gratuite_oui}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-situation[1]/div[1]/div[1]/article[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[1]/div[1]/form[1]/vdm-radio[1]/div[1]/div[1]/label[1]
${pj_gratuite_oui}=     //input[@id='assistance_0']
${refuge_non}=      //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-situation[1]/div[1]/div[1]/article[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[2]/div[1]/form[1]/vdm-radio[1]/div[1]/div[2]/label[1]
${itinerance}=      //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-situation[1]/div[1]/div[1]/article[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[3]/div[1]/form[1]/vdm-radio[1]/div[1]/div[2]/label[1]
${avec_refuge_non}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-situation[1]/div[1]/div[1]/article[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[4]/div[1]/form[1]/vdm-radio[1]/div[1]/div[2]/label[1]
${suivant_etape3_1}=    //button[contains(text(),'Suivant')]