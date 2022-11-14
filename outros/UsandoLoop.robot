*** Settings ***
Documentation  usando o comando for no robotsframework

*** Variables ***
@{Carros}    chevette    corsa    gol    monza    omega gls    omega cd    celta    fiesta    blazer    tracker


*** Test Case ***
CasoTeste01
    Usando FOR IN

CasoTeste02
    Usando FOR RANGE

CasoTeste03
    Usando FOR IN ENUMERATE

CasoTeste04
    Usando FOR EXIT IF

*** Keywords ***
Usando FOR RANGE
    Log to Console  ${\n}
    FOR    ${LISTA}    IN RANGE    0    5  
        Log To Console    ${LISTA}
    END

Usando FOR IN
    Log To Console  ${\n}
    FOR  ${item}  IN  @{Carros}
        Log To Console    Meu carro foi um: ${item}!
    END

Usando FOR IN ENUMERATE
    Log To Console  ${\n}
    FOR  ${indice}  ${item}  IN ENUMERATE  @{Carros}
        Log To Console    Meu carro ${indice} foi um: ${item}!
    END

Usando FOR EXIT IF
    Log To Console  ${\n}
    FOR  ${indice}  ${item}  IN ENUMERATE  @{Carros}
        Log To Console    Meu carro ${indice} foi um: ${item}!
        Exit For Loop If    ${indice} >= 2
        Exit For Loop If    '${item}' == 'monza'
    END
