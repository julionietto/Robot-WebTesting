*** Settings ***
Documentation      Essa switch de testes testa o site da CheveAutopecas

Resource           cheveautopecas_resources.robot

Test Setup         Abrir o navegador
Task Teardown      Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso a home CheveAutopecas
    [Documentation]    Esse teste verifica se a home do site está online
    ...                e verifica se a categoria de produtos está disponível
    [Tags]             menus
    Dado que estou na homepage da cheveautopecas.com.br
    Quando acessar o menu "Motor"
    Entao o titulo da pagina deve ser "[motor] [cheve] [cheveautopeças] [chevrolet]"
    E o titulo da categoria deve ser "MOTOR"


Caso de Teste 02 - Pesquisa de produto
    [Documentation]    Esse teste verifica se o produto está sendo retornado após pesquisa digitada
    [Tags]             buscas
    Dado que estou na homepage da cheveautopecas.com.br
    Quando pesquisar o produto "Bomba Hidráulica" no campo de pesquisa
    Então o resultado da pesquisa deve exibir o produto pesquisado

