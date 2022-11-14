*** Settings ***
Documentation    Usando ifs no robot framework

*** Variables ***
@{Carros}    chevette    corsa    gol    monza    omega gls    omega cd    celta    fiesta    blazer    tracker


*** Test Cases ***

Caso de Teste 1
    teste verdadeiro
    teste falso
    armazenando valor se condicao atendida

*** Keywords ***
teste verdadeiro
    Run Keyword If    '${Carros[0]}' == 'chevette'     Log    O primeiro carro foi um chevette.

teste falso
    Run Keyword Unless    '${Carros[9]}' == 'blazer'    Log    O ultimo carro foi uma tracker.

armazenando valor se condicao atendida
    ${VAR}    Set Variable If    '${Carros[1]}' == 'corsa'    corsa
    Log    O segundo carro foi um ${VAR}
