*** Settings ***
Documentation        Esse programa mostra tipos de variaveis diferentes para serem usadas

*** Variables ***
${Variavel_Global_simples}    Lista de carros que ja passaram pela garagem

@{Carros}    chevette    corsa    gol    monza    omega gls    omega cd    celta    fiesta    blazer    tracker  astra  Grand Cherokee

&{Carro_Desejado}    modelo=Dakota R/T    marca=Dodge    motor=5.2    potencia=220    torque=39 mkgf    combustivel=gasolina    transmissao=automatica

*** Test Cases ***
Caso de Teste 1
    listando variaveis

Caso de Teste 2
    passando argumentos para testes    ${Carro_Desejado.modelo}    ${Carro_Desejado.transmissao}

Caso de Teste 3
    ${Variavel_local}    teste que retorna argumento    ${Carro_Desejado.modelo}    ${Carro_Desejado.potencia}
    Log    ${Variavel_local}

*** Keywords ***
listando variaveis
    Log    ${Variavel_Global_simples}
    Log    O primeiro carro foi ${Carros[0]}
    Log    O melhor carro foi ${Carros[5]}
    Log    O carro que mais sinto falta ${Carros[8]}
    Log    O proximo carro será da marca ${Carro_Desejado.marca} e será o modelo ${Carro_Desejado.modelo}

passando argumentos para testes
    [Arguments]    ${modelo}    ${cambio}
    Log    O carro é ${modelo} com cambio ${cambio}

teste que retorna argumento
    [Arguments]    ${modelo}    ${potencia}
    ${Mensagem}    Set Variable If    ${potencia}>150    ${modelo} tem motor forte.

 