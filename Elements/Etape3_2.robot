
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
${titre_description_animal_sommaire}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[2]/app-animal-description-display[1]/div[1]/h5[1]
${nom_animal_sommaire}=     //app-label-value[@ng-reflect-label='Nom']//div//div
${sexe_animal_sommaire}=    //app-label-value[@ng-reflect-label='Sexe']//div//div
${race_animal_sommaire}=        //app-label-value[@ng-reflect-label='Race']//div//div
${couleur_animal_sommaire}=        //app-label-value[@ng-reflect-label='Couleur']//div//div
${anneé_naissance_animal_sommaire}=        //app-label-value[@ng-reflect-label='Année de naissance']//div//div
${poids_animal_naissance}=      //app-label-value[@ng-reflect-label='Poids']//div//div

#check_caracteristique_sommaire
${modifier_caracteristiques}=       //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[3]/button[1]
${fermer_modifier_caracteristiques}=        //div[@class='modal fade show']//span[@aria-hidden='true'][normalize-space()='×']
${titre_caracteristique_animal_sommaire}=       //app-animal-characteristics-display[@ng-reflect-application='[object Object]']//h5

${micropuce_sommaire}=      //app-label-value[@ng-reflect-label='Micropucé']//div//div[contains(text(),'Oui')]
${micropuce_preuve_sommaire}=    //*[@id="main-content"]/div/div/app-summary-wizard-step/div/app-summary/div/div[1]/div/div[3]/app-animal-characteristics-display/div/div[1]/div[2]/div[2]/app-document-display/div/button
${micropuce_num_sommaire_label}=        //app-label-value[@class='ng-star-inserted']//div//div
${micropuce_num_sommaire}=  //app-label-value[@ng-reflect-label='Numéro de la micropuce']//div//div

${sterilise_sommaire}=      //app-label-value[@ng-reflect-label='Stérilisé']//div//div
${sterilise_preuve}=       //body[1]/div[2]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[3]/app-animal-characteristics-display[1]/div[1]/div[1]/div[1]/div[2]/app-document-display[1]/div[1]/button[1]

${distinctifs_sommaire}=        //app-label-value[@ng-reflect-label='Signes distinctifs']//div//div
${provenance_animal_sommaire}=          //body/div[@id='main-content']/div/div[@id='shell-main-content']/div/app-root/div/app-animal-situation-wizard/vdm-wizard[@ng-reflect-steps='[object Object],[object Object']/main[@id='main-content']/div/div/app-summary-wizard-step/div/app-summary[@ng-reflect-application='[object Object]']/div/div/div/div/app-animal-characteristics-display[@ng-reflect-application='[object Object]']/div/div/div[1]/div[1]/div[1]
${permis_antécédents_sommaire}=      //body/div[@id='main-content']/div/div[@id='shell-main-content']/div/app-root/div/app-animal-situation-wizard/vdm-wizard[@ng-reflect-steps='[object Object],[object Object']/main[@id='main-content']/div/div/app-summary-wizard-step/div/app-summary[@ng-reflect-application='[object Object]']/div/div/div/div/app-animal-characteristics-display[@ng-reflect-application='[object Object]']/div/div/div[2]/div[1]/div[1]

#check_gratuité_sommaire
${titre_gratuité_animal_sommaire}=      //app-animal-situation-display[@ng-reflect-application='[object Object]']//h5[contains(text(),'Conditions de gratuité')]
${gratuité_animal_non_sommaire}=        //app-animal-situation-display[@ng-reflect-application='[object Object]']//div//div//div//span
${gratuité_animal_oui_sommaire}=        //app-label-value[@ng-reflect-label="Chien guide et d'assistance"]//div//div
${gratuité_animal_oui_preuve_sommaire}=        //app-animal-situation-display[@ng-reflect-application='[object Object]']//div//button

#soumettre
${declaration_coche}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[3]/app-declarations[1]/div[1]/div[1]
${condition_coche}=   //input[@id='chkConditionGeneric']
${btn_soumettre}=     //button[contains(text(),'Suivant')]

#vérifier soumission
${btn_toutes_mes_demandes}=    //a[contains(text(),'Toutes mes demandes')]

#modifier_popup_description_animal_sommaire
${modifier_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[2]/button[1]
${modifier_nom_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-input[1]/div[1]/input[1]
${modifier_sex_femelle}=    //label[contains(text(),'Femelle')]
${modifier_race}=      //vdm-select[@ng-reflect-label='Quelle est sa race?']//select[@class='vdm-select form-control']
${modifier_couleur}=        //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[1]/div[1]/select[1]
${modifier_annee_naissance}=    //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/vdm-select[2]/div[1]/select[1]
${modifier_poids}=      //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/app-animal-form[1]/form[1]/div[2]/div[1]/div[1]/fieldset[1]/div[2]/div[1]/input[1]
${sauvegarder_modification_animal}=     //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-description-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[3]/div[1]/button[2]
${fermer_modifier_animal}=         //div[@class='modal fade show']//span[@aria-hidden='true'][normalize-space()='×']

#vérifier_popup_caracteristiques_sommaire
${btn_sauvegarder_popup_caracteristique}=     //div[@class='modal fade show']//button[@type='button'][normalize-space()='Sauvegarder']

    #stérilisation
${popup_stérilisé?}=       //label[normalize-space()='Votre animal est-il stérilisé?']
${popup_stérilisé_oui}=     //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoungyes']
${textinfo_popup_stérilisé_oui}=     //div[contains(text(),'Veuillez nous fournir une preuve de stérilisation ')]
${stérilisation_Non, la stérilisation est contre-indiqué pour mon animal}=      //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoungno_medical']
${textinfo_popup_Non, la stérilisation est contre-indiqué pour mon animal}=       //div[contains(text(),'Veuillez nous fournir une preuve de contre-indicat')]
${stérilisation_Non, mon animal est enregistré auprès d'une association de races reconnue}=     //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoungno_registered']
${textinfo_popup_Non, mon animal est enregistré auprès d'une association de races reconnue}=    //div[contains(text(),'Veuillez fournir le certificat d’enregistrement de')]
${stérilisation_Non, il est âgé de moins de 6 mois}=        //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoungno_too_young']
${stérilisation_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=      //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoungno_contraindicated_between_6_18']
${textinfo_popup_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=       //div[contains(text(),'Veuillez nous fournir une preuve de contre-indicat')]
${stérilisation_document_label_popup}=      //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_0']
${stérilisation_document_Non, le micropuçage est contre-indiqué pour mon animal}=       //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_1'][normalize-space()='Document']
${pj_stérilisation_document_Non, le micropuçage est contre-indiqué pour mon animal}=       //body[1]/div[2]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/app-animal-characteristics-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[1]/div[1]/form[1]/div[1]/div[3]/div[1]/vdm-file-selector[1]/div[1]/div[1]/div[1]/input[1]
${stérilisation_document_Non, mon animal est enregistré auprès d'une association de races reconnue}=       //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_3'][normalize-space()='Document']
${pj_stérilisation_document_Non, mon animal est enregistré auprès d'une association de races reconnue}=       //div[@role='dialog']//div[@role='document']//div//div//div//div//app-animal-characteristics-form[@ng-reflect-configuration='[object Object]']//div//form[@ng-reflect-form='[object Object]']//div[@formarrayname='characteristics']//app-animal-characteristic[@ng-reflect-can-edit='true']//div//form[@ng-reflect-form='[object Object]']//div//div[@formarrayname='fileInputs']//div//vdm-file-selector[@ng-reflect-required='true']//div[@ng-reflect-klass='form-group']//div//div//input[@type='file']
${stérilisation_document_Non, il est âgé de moins de 6 mois}=       //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_3'][normalize-space()='Document']
${stérilisation_document_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=       //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_2'][normalize-space()='Document']
${pj_stérilisation_document_Non, la stérilisation est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=       //div[@role='dialog']//div[@role='document']//div//div//div//div//app-animal-characteristics-form[@ng-reflect-configuration='[object Object]']//div//form[@ng-reflect-form='[object Object]']//div[@formarrayname='characteristics']//app-animal-characteristic[@ng-reflect-can-edit='true']//div//form[@ng-reflect-form='[object Object]']//div//div[@formarrayname='fileInputs']//div//vdm-file-selector[@ng-reflect-required='true']//div[@ng-reflect-klass='form-group']//div//div//input[@type='file']
${stérilisation_document_Oui}=       //label[@for='sterilizedAfter2022RulesTooYoungAndTemporarelyTooYoung_0'][normalize-space()='Document']
${pj_stérilisation_document_Oui}=       //div[@role='dialog']//div[@role='document']//div//div//div//div//app-animal-characteristics-form[@ng-reflect-configuration='[object Object]']//div//form[@ng-reflect-form='[object Object]']//div[@formarrayname='characteristics']//app-animal-characteristic[@ng-reflect-can-edit='true']//div//form[@ng-reflect-form='[object Object]']//div//div[@formarrayname='fileInputs']//div//vdm-file-selector[@ng-reflect-required='true']//div[@ng-reflect-klass='form-group']//div//div//input[@type='file']

    #micropuce
${micropuce?}=        //label[normalize-space()='Est-il micropucé?']
${micropuce_oui_1}=      //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoungyes']
${micropuce_Non, le micropuçage est contre-indiqué pour mon animal}=        //label[contains(text(),'Non, le micropuçage est contre-indiqué pour mon an')]
${micropuce_Non, il est âgé de moins de 6 mois}=      //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoungno_too_young']
${micropuce_Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=        //label[contains(text(),'Non, le micropuçage est temporairement contre-indi')]
${micropuce_num}=       //input[@placeholder='Entrez le numéro de la micropuce']
${micropuce_document_yes}=      //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_0'][normalize-space()='Document']
${micropuce_document_Non, le micropuçage est contre-indiqué pour mon animal}=  //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_1'][normalize-space()='Document']
${micropuce_document_Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=       //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_2'][normalize-space()='Document']
${micropuce_preuve}=        //body[1]/div[1]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/app-animal-characteristics-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[2]/div[1]/form[1]/div[1]/div[2]/div[1]/vdm-file-selector[1]/div[1]/div[1]/div[1]/vdm-file-preview[1]/div[1]/img[1]
${pj_micropuce_document_Non, le micropuçage est contre-indiqué pour mon animal}=        //div[3]//div[1]//vdm-file-selector[1]//div[1]//div[1]//div[1]//input[1]
${pj_micropuce_document_Non, le micropuçage est temporairement contre-indiqué pour mon animal, jusqu’à ses 18 mois}=    //*[@id="microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_2"]
${pj_micropuce_document_oui_1}=    //*[@id="microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_0"]

${micropuce_oui_popup}=         //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/app-animal-characteristics-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[2]/div[1]/form[1]/vdm-radio[1]/div[1]/div[1]/label[1]
${micropuce_num_popup}=         //input[@placeholder='Entrez le numéro de la micropuce']
${micropuce_document_label_popup}=     //label[@for='microchippedAfter2022RulesTooYoungAndTemporarelyTooYoung_0'][text()='Document']
${micropuce_document_supprimerremplacer_popup}=   //body[1]/div[2]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/app-animal-characteristics-modal[1]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[2]/div[1]/form[1]/div[1]/div[2]/div[1]/vdm-file-selector[1]/div[1]/div[1]/div[1]/div[1]/button[1]

${distinctif_popup}=        //label[contains(text(),'A-t-il des signes distinctifs?')]

#modifier popup gratuité
    #chien
${modifier_gratuite}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-animal-situation-wizard[1]/vdm-wizard[1]/main[1]/div[1]/div[1]/app-summary-wizard-step[1]/div[1]/app-summary[1]/div[1]/div[1]/div[1]/div[4]/button[1]
${modifier_chien_assistance_oui}=     //label[@for='refugeAdoptiontrue']
${modifier_pj_chien_assistance_oui}=     //body[1]/div[2]/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/app-animal-characteristics-modal[2]/vdm-modal[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/app-animal-characteristics-form[1]/div[1]/form[1]/div[1]/app-animal-characteristic[1]/div[1]/form[1]/div[1]/div[2]/div[1]/vdm-file-selector[1]/div[1]/div[1]/div[1]/input[1]
${sauvegarder_modification_gratuite}=   //body/div[@id='main-content']/div[1]/div[2]/div[1]/app-root[1]/div[1]/app-dashboard-page[1]/app-modify-application[1]/div[1]/div[2]/app-summary[1]/app-animal-characteristics-modal[2]/vdm-modal[1]/div[1]/div[1]/div[1]/div[3]/div[1]/button[2]


