*** Settings ***
Documentation    Aqui temos o mapeamento dos elementos e localizadores

*** Variables ***
${TESTE}            //button[@id='btnEntrarComSiengeID'] 




${DESCRICAO}         //moura-text-box[@label="Descrição"]//input
${CHECKBOX_TEXTO}    //label[normalize-space()='Texto']//input
${CAMPO}             //moura-text-box-procura[@label="Campo"]//input
${INICIO}            //moura-text-box[@label="Início"]//input
${FIM}               //moura-text-box[@label="Fim"]//input
${BTN_ADICIONAR}     //moura-button[@text="Adicionar"]//button