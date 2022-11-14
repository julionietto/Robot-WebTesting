*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://www.cheveautopecas.com.br/
${BROWSER}          chrome
${VARIAVEL_MENU}    //a[contains(.,'MOTOR')]
${PALAVRA_MOTOR}    MOTOR
${CAMPO_BUSCAR}     (//input[@placeholder='Buscar'])[1]
${BOTAO_BUSCAR}     (//button[contains(@data-tray-tst,'botao_buscar')])[1]
${PRODUTO_CONF}     //img[contains(@alt,'Bomba Direção Hidráulica - Onix/Prisma 2013 á 2016 94748892')]

*** Keywords ***

Abrir o navegador
    Open BROWSER    browser=${BROWSER}
    Sleep    5
    Maximize Browser Window

Acessar a home do site cheveautopecas.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${VARIAVEL_MENU}
    Sleep    5

Entrar no menu motor
    Click Element    locator=${VARIAVEL_MENU}
    Sleep    5

Verificar se aparece o titulo "MOTOR" no cabeçalho da categoria
    Wait Until Page Contains    ${PALAVRA_MOTOR}

Verificar se o titulo da pagina é "${TITULO_PAGINA}"
    Title Should Be    title=${TITULO_PAGINA}
        
Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Input Text    locator=${CAMPO_BUSCAR}    text=${PRODUTO}
    Sleep    5

Clicar no botão de Pesquisa
    Click Button    locator=${BOTAO_BUSCAR}
Verificar o resultado da pesquisa se está listando o produto pesquisado
    Element Should Be Visible    locator=${PRODUTO_CONF}
    Sleep    5

Fechar o navegador
    Capture Page Screenshot
    Close Browser
    
# BDD Steps
Dado que estou na homepage da cheveautopecas.com.br
    Acessar a home do site cheveautopecas.com.br
    
Quando acessar o menu "Motor"
    Entrar no menu motor

Entao o titulo da pagina deve ser "${TITULO_PAGINA}"
    Verificar se o titulo da pagina é "${TITULO_PAGINA}"

E o titulo da categoria deve ser "MOTOR"
    Verificar se aparece o titulo "MOTOR" no cabeçalho da categoria

Quando pesquisar o produto "${PRODUTO}" no campo de pesquisa
    Digitar o nome do produto "${PRODUTO}" no campo de Pesquisa
    Clicar no botão de Pesquisa

Então o resultado da pesquisa deve exibir o produto pesquisado
    Verificar o resultado da pesquisa se está listando o produto pesquisado