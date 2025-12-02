*** Settings ***
Documentation    Suite dos testes de Cadastro de Configuração de Importação de Produtos

Resource    ../Resources/base.robot
Resource    elements.robot
Resource    keywords.robot

Test Setup       Abrir Navegador
#Test Teardown    Fechar Navegador

*** Test Cases ***
Criando minha primeira cotação
    Acessar Site Sienge
    Acessar a tela de Cotação de Preços
    Ir para tela de Cadastro de cotação de Preços Obra Hub
    Clicar em Cotação Sienge obra hub
    Verificar se foi redirecionado para tela de Cadastro de Cotação de Preços
    Capturar o ID da cotação gerada
    Clicar em Adicionar Insumo
    Preencher os campos para cadastro da cotação
    Clicar em Salvar
    Clicar no X para fechar a tela de cadastro de insumo
    Clicar no botão Enviar Cotação
    Clicar no botão Entendi
    Verificar a mensagem informando que quando a cotação estiver disponível será enviada uma notificação
    Acessar a cotação recém-criada usando o ID capturado

    #Clicar no botão Mapa de Comparação
    #Selecionar os fornecedores para a comparação
    #Clicar em Gerar Pedido
    