
*** Variables ***
${modifier_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[2]/button[1]
${modifier_nom_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-input[1]/div[1]/input[1]
${modifier_sex_femelle}=    //label[contains(text(),'Femelle')]
${modifier_race}=      //vdm-select[@ng-reflect-label='Quelle est sa race?']//select[@class='vdm-select form-control']
${modifier_couleur}=        //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[1]/div[1]/select[1]
${modifier_annee_naissance}=    //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[2]/div[1]/select[1]
${modifier_poids}=      //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/div[2]/div[1]/input[1]
${sauvegarder_modification_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[3]/div[1]/button[2]

#check_descrition_animal_sommaire
${titre_description_animal_sommaire}=       //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/div[1]/div[1]/div[1]/div[2]/app-animal-description-display[1]/div[1]/h5[1]
${nom_animal_sommaire}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/div[1]/div[1]/div[1]/div[2]/app-animal-description-display[1]/div[1]/div[1]/div[1]/div[1]/app-label-value[1]/div[1]/div[1]
${sexe_animal_sommaire}=    //app-label-value[@ng-reflect-label='Sexe']//div//div
${race_animal_sommaire}=        //app-label-value[@ng-reflect-label='Race']//div//div
${couleur_animal_sommaire}=        //app-label-value[@ng-reflect-label='Couleur']//div//div
${anneé_naissance_animal_sommaire}=        //app-label-value[@ng-reflect-label='Année de naissance']//div//div
${poids_animal_naissance}=      //app-label-value[@ng-reflect-label='Poids']//div//div

#check_caracteristique_sommaire
${modifier_caracteristiques}=       //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[3]/button[1]
${fermer_modifier_caracteristiques}=        //div[@class='modal fade show']//span[@aria-hidden='true'][normalize-space()='×']

${micropuce_sommaire}=      //app-label-value[@ng-reflect-label='Micropucé']//div//div[contains(text(),'Oui')]
${micropuce_preuve_sommaire}=    //*[@id="main-content"]/div/div/app-summary-wizard-step/div/app-summary/div/div[1]/div/div[3]/app-animal-characteristics-display/div/div[1]/div[2]/div[2]/app-document-display/div/button
${micropuce_num_sommaire_label}=        //app-label-value[@class='ng-star-inserted']//div//div
${micropuce_num_sommaire}=  //app-label-value[@ng-reflect-label='Numéro de la micropuce']//div//div

${sterilise_sommaire}=      //app-label-value[@ng-reflect-label='Stérilisé']//div//div
${sterilise_preuve}=        //body[1]/div[1]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/div[1]/div[1]/div[1]/div[3]/app-animal-characteristics-display[1]/div[1]/div[1]/div[1]/div[2]/app-document-display[1]/div[1]/button[1]
