*** Settings ***
Documentation    Esse programa serve para exercitar o uso de variáveis no RobotFramework
Library    String

*** Variables ***
${Global_variavel}    Essa variavel é global e pode ser chamada em qualquer lugar

*** Test Cases ***
Caso de Teste 01 - listando variáveis parte 1
    testando variavel 1
    testando variavel 2

Caso de Teste 02 - listando variaveis parte 2
    testando variavel 2
    testando variavel 3

Caso de Teste 03 - listando variaveis parte 3
    testando variavel 4

*** Keywords ***
testando variavel 1
    ${Global_variavel_tempo_real}     Generate Random String
    Set Global Variable    ${Global_variavel_tempo_real}
    Set Suite Variable     ${Suite_variavel_tempo_real}    Variavel suite
    Set Test Variable      ${Teste_variavel_tempo_real}    Variavel teste
    Log    ------ teste 1 --------
    Log    ${Teste_variavel_tempo_real}
    ${LOCAL}    Set Variable    variavel local do teste 1 - comprando uma dakota
    Log    ${LOCAL}

testando variavel 2
    Set Test Variable    ${Teste_variavel_2}    conteudo da variavel teste 2
    Log    ------ teste 2 --------
    Log     ${Global_variavel}
    Log     ${Global_variavel_tempo_real}
    Log     ${Suite_variavel_tempo_real}
#    Log     ${Teste_variavel_tempo_real}
    Log     ${Teste_variavel_2}

testando variavel 3
    Log    ----- teste 3 -----
    Log     ${Global_variavel}
    Set Global Variable     ${Global_variavel}     mudando o conteudo da variavel global no teste 3


testando variavel 4
    Log    ---- teste 4 -----
    Log    ${Global_variavel}
    Log    ${Global_variavel_tempo_real}