*** Settings ***
Documentation    Aqui teremos a estrutura base do projeto
Library          SeleniumLibrary
Library          String
Library          DateTime
Library          Collections
Library          OperatingSystem
Library          Library/Uteis.py

*** Variables ***
${base_url}      https://produtoeinovacao.sienge.com.br/sienge/
${BROWSER}       chrome
${TIMEOUT}       10s

*** Keywords ***
Abrir Navegador
    Open Browser    ${base_url}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${TIMEOUT}

Fechar Navegador
    Close All Browsers