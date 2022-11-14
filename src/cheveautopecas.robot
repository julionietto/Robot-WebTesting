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
    Acessar a home do site cheveautopecas.com.br
    Entrar no menu motor
    Verificar se aparece o titulo "MOTOR" no cabeçalho da categoria
    Verificar se o titulo da pagina é "[motor] [cheve] [cheveautopeças] [chevrolet]"


Caso de Teste 02 - Pesquisa de produto
    [Documentation]    Esse teste verifica se o produto está sendo retornado após pesquisa digitada
    [Tags]             buscas
    Acessar a home do site cheveautopecas.com.br
    Entrar no menu motor
    Digitar o nome do produto "Bomba hidraulica" no campo de Pesquisa
    Clicar no botão de Pesquisa
    Verificar o resultado da pesquisa se está listando o produto pesquisado

