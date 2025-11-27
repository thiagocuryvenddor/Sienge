*** Settings ***
Documentation    Aqui teremos todas as palavras chaves de automação dos comportamentos
Resource    ../Resources/base.robot
Resource    elements.robot

*** Keywords ***

Acessar Site Sienge
    Open Browser          ${base_url}    chrome    
    Sleep     3
    Click Element     //button[@id='btnEntrarComSiengeID']
    














Preencher todos os campos do Cadastro
    Input Text    ${DESCRICAO}    TESTE

Selecionar o tipo de arquivo
    Click Element    ${CHECKBOX_TEXTO}

Preencher todos os campo dos Itens
    [Arguments]    ${DADO_CAMPO}    ${DADO_INICIO}    ${DADO_FIM}
    Press Keys     ${CAMPO}         ${DADO_CAMPO}     ENTER

    Input Text    ${INICIO}    ${DADO_INICIO}
    Input Text    ${FIM}       ${DADO_FIM}

    Click Button    ${BTN_ADICIONAR}
    Sleep           1

Clicar no botão Gravar
    Click Button    ${BTN_GRAVAR}

Clicar no botão Limpar
    Click Button    ${BTN_LIMPAR}