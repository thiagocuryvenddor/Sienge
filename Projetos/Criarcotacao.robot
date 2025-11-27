*** Settings ***
Documentation    Suite dos testes de Cadastro de Configuração de Importação de Produtos

Resource    ../Resources/base.robot
Resource    elements.robot
Resource    keywords.robot

#Test Teardown    Close All Browsers

*** Test Cases ***
Criando minha primeira cotação
    Acessar Site Sienge
    
    