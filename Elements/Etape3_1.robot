
*** Variables ***
${btn_continuer_etape2}=    //*[@id="main-content"]/div/app-task-list/div/div[2]/article/div/app-task-list-item[2]/div/button
#Page info animal -Etape2-1
${choix_chien}=     //label[@for='dog']//div[@class='d-flex align-items-center']
${Nom_chien}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-personal-info-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-form-page[1]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-input[1]/div[1]/input[1]
${sex_chien}=   //label[contains(text(),'Mâle')]
${race_chien}=  //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-personal-info-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-form-page[1]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/app-animal-race-selector[1]/div[1]/div[2]/vdm-select[1]/div[1]/select[1]
${couleur_chien}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-personal-info-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-form-page[1]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[1]/div[1]/select[1]
${annnee_naissance_chien}=    //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-personal-info-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-form-page[1]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[2]/div[1]/select[1]
${poids_chien}=  //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-personal-info-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-animal-form-page[1]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/div[2]/div[1]/input[1]
${suivant_etape2_1}=      //button[contains(text(),'Suivant')]