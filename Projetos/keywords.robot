*** Settings ***
Documentation    Aqui teremos todas as palavras chaves de automação dos comportamentos
Resource    ../Resources/base.robot
Resource    ../Resources/credentials.robot
Resource    elements.robot

*** Keywords ***

Acessar Site Sienge

    Wait Until Element Is Visible    id=username    10
    Input Text    id=username    ${USERNAME}

    Input Text    id=password    ${PASSWORD}

    Click Button    id=submit
    Run Keyword And Ignore Error    Click Element    ${ELEMENT_PROSSEGUIR}

    Wait Until Element Is Visible    ${BTN_LEMBRAR_TARDE}    20
    Click Element    ${BTN_LEMBRAR_TARDE}


Fechar Popups Se Existirem
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${BTN_NAO_OBRIGADO}    80s
    Run Keyword And Ignore Error    Click Element    ${BTN_NAO_OBRIGADO}
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${BTN_ENTENDI2}    5s
    Run Keyword And Ignore Error    Click Element    ${BTN_ENTENDI2}
    
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${BTN_BEAMER_CLOSE}    5s
    Run Keyword And Ignore Error    Click Element    ${BTN_BEAMER_CLOSE}
Acessar a tela de Cotação de Preços
    Fechar Popups Se Existirem
    Wait Until Element Is Visible    ${BTN_FAVORITOS}    20
    Click Element    ${BTN_FAVORITOS}

    Wait Until Element Is Visible    ${BTN_FAV_CAD_COTACAO}    20
    Click Element    ${BTN_FAV_CAD_COTACAO}

    Wait Until Element Is Visible    ${VERIFICAR_TELA_COTACAO}     20


Ir para tela de Cadastro de cotação de Preços Obra Hub
    Wait Until Element Is Visible      ${NOVA_COTACAO_OBRA}      20
    Click Element     ${NOVA_COTACAO_OBRA}

    Wait Until Element Is Visible    ${COTACAO_OBRA_HUB}     20
    Click Element    ${COTACAO_OBRA_HUB} 

    Wait Until Element Is Visible    ${VERIFICAR_TELA_CAD}    20
    
  
Clicar em Cotação Sienge obra hub
    Wait Until Element Is Visible    ${BTN_NOVA_COTACAO}     20
    Click Element    ${BTN_NOVA_COTACAO}

Verificar se foi redirecionado para tela de Cadastro de Cotação de Preços
    Wait Until Element Is Visible     ${VERIFICAR_NOVA_COTACAO}    20


Capturar o ID da cotação gerada
    ${numeroCotacao}=    Get Value    xpath://input[@name='numeroCotacao']
    Set Test Variable    ${numeroCotacao}

Clicar em Adicionar Insumo
    Wait Until Element Is Visible    ${BTN_ADD_INSUMO}      20
    Click Element    ${BTN_ADD_INSUMO}   

Preencher os campos para cadastro da cotação
    Wait Until Element Is Visible    ${LBL_COD_OBRA}     20
    Press Keys    ${LBL_COD_OBRA}    Resort Leandro Melo
    Sleep     1
    Press Keys    ${LBL_COD_OBRA}    TAB

    Wait Until Element Is Visible    ${LBL_COD_INSUMO}    20
    Press Keys    ${LBL_COD_INSUMO}    prego 18x30
    Sleep     1
    Press Keys    ${LBL_COD_INSUMO}   TAB

    Wait Until Element Is Visible    ${LBL_QUANTIDADE}    20
    Press Keys    ${LBL_QUANTIDADE}    2    TAB


Clicar em Salvar
    Wait Until Element Is Visible    ${BTN_SALVAR_INSUMO}    20
    Click Element    ${BTN_SALVAR_INSUMO}  

    Wait Until Element Is Visible    ${INSUMO_ADD_CHECK}     20

Clicar no X para fechar a tela de cadastro de insumo
    Wait Until Element Is Visible    ${BTN_FECHAR}     20
    Click Element    ${BTN_FECHAR}  

Clicar no botão Enviar Cotação
    Wait Until Element Is Visible    ${BTN_ENVIAR_COTACAO}     20
    Click Element    ${BTN_ENVIAR_COTACAO} 

Clicar no botão Entendi

    Wait Until Element Is Visible    ${BTN_ENTENDI}       20
    Click Element    ${BTN_ENTENDI}

Verificar a mensagem informando que quando a cotação estiver disponível será enviada uma notificação
    Wait Until Element Is Visible    ${CONFIRMACAO_COTACAO}    20

Acessar a cotação recém-criada usando o ID capturado

    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${BTN_ENTENDI2}    20s
    Run Keyword And Ignore Error    Click Element    ${BTN_ENTENDI2}

    Wait Until Element Is Visible    ${BTN_LIMPAR}    20
    Click Element    ${BTN_LIMPAR}
    
    Wait Until Element Is Visible    ${LBL_COTACAO}    20
    Input Text   ${LBL_COTACAO}     ${numeroCotacao}    

    Wait Until Element Is Visible    ${BTN_CONSULTAR}     20
    Click Element    ${BTN_CONSULTAR} 

Clicar no botão Mapa de Comparação
    Wait Until Element Is Visible    ${BTN_MAPA_COMPARACAO}     20
    Click Element    ${BTN_MAPA_COMPARACAO}  

Selecionar os fornecedores para a comparação
    Wait Until Element Is Visible    ${BTN_FORNECEDORES}    20
    Click Element    ${BTN_FORNECEDORES}

    Wait Until Element Is Visible    ${BTN_MOSTRAR_TUDO}    20
    Click Element    ${BTN_MOSTRAR_TUDO}

Verificar se esta mostrando o produto mais barato na cotação (verde)
    [Arguments]    ${timeout}=30s
    Wait Until Element Is Visible    css=.rowMenorPreco    ${timeout}

#Clicar em Gerar Pedido



