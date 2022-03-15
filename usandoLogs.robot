*** Settings ***
Documentation        Esse programa mostra como usar logs de diferentes formas.
Library    SeleniumLibrary

*** Variables ***
${Variavel_Global_simples}    Lista de carros que já passaram pela garagem

@{Carros}    chevette    corsa    gol    monza    omega gls    omega cd    celta    fiesta    blazer    tracker

&{Carro_Desejado}    modelo=Dakota Sport    marca=Dodge    motor=3.9    potencia=177    torque=31 mkgf    combustivel=gasolina    transmissao=automática

*** Test Cases ***
Caso de Teste 1
    usando log simples
    usando log no console
    capturando tela para log


*** Keywords ***
usando log simples
    Log    ${Variavel_Global_simples}
    ${VAR}    Set Variable    cambio na coluna de direção.
    Log    O proximo carro será da marca ${Carro_Desejado.marca} e será o modelo ${Carro_Desejado.modelo} com ${VAR}.

usando log no console
    Log To Console    As minas piram em uma picape
    Log Many          Essa é lista de carros que eu já tive:     @{Carros}
    Log               ${Carro_Desejado.modelo} - ${Carro_Desejado.transmissao}


capturando tela para log
    Open Browser    https://www.google.com/search?q=dodge+dakota+sport+3.9+v6&rlz=1C1CHZN_pt-BRBR983BR983&sxsrf=APq-WBuTebz1xqm2gAbEy0hsOVGToerLlQ:1647307416889&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjekq2r-sb2AhWKqpUCHQhyBRYQ_AUoAnoECAEQBA&biw=1366&bih=617&dpr=1#imgrc=0tS-MZTuXduk0M    chrome
    Capture Page Screenshot    carro_desejado.png
    Close Browser

 