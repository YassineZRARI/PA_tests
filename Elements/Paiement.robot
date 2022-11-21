
*** Variables ***
#Page1 paiement
${frame1}=  //iframe[@id='standaloneFrame']
${prenom}=      //input[@id='firstName']
${nom_de_famille}=      //input[@id='lastName']
${courriel}=        //input[@id='email']
${adresse_civique}=     //input[@id='defaultPaymentInstrument.billingDetails.address1']
${ville}=       //input[@id='defaultPaymentInstrument.billingDetails.city']
${pays}=        //select[@id='countrySelect']
${province}=    //select[@id='stateSelect']
${code_postal}=     //input[@id='defaultPaymentInstrument.billingDetails.zip']
${titulaire}=       //input[@id='defaultPaymentInstrument.billingDetails.cardholderName']
${type_de_carte}=       //select[@id='defaultPaymentInstrument.creditCard.displayCardType']
${numero_de_la_carte}=      //input[@id='cardNumber']
${annee_expiration}=        //select[@id='defaultPaymentInstrument.creditCard.expiryYear']
${btn_ok}=      //span[contains(text(),'OK')]
#Page2 paiement
${numero_de_verification}=      //input[@id='cvd']
${btn_payer}=       //button[@id='submitButton']