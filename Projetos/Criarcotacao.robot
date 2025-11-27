*** Settings ***
Documentation    Suite dos testes de Cadastro de Configuração de Importação de Produtos

Resource    ../Resources/base.robot
Resource    elements.robot
Resource    keywords.robot

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Criando minha primeira cotação
    Acessar Site Sienge
    
    