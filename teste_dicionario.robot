*** Settings ***
Documentation    Exercicio 01 do curso PHA, qual consiste em exibir as informações de um dicionário no console. 

*** Variables ***
&{DADOS}      nome=Thiago    idade=32    rua=Rua dos Testes    numero=123    cep=12345-678    bairro=Bairro A    cidade=Fortaleza    estado=CE


*** Test Cases ***
Caso de teste do exercicio 01 
    Exibir DADOS do Dicionário


*** Keywords ***
Exibir DADOS do Dicionário

    Log To Console   \nEssas são as informações dos seu dicionário:    
    Log To Console   Nome: ${DADOS.nome}
    Log To Console   Idade: ${DADOS.idade}
    Log To Console   Rua: ${DADOS.rua}
    Log To Console   Número: ${DADOS.numero}
    Log To Console   CEP: ${DADOS.cep}
    Log To Console   Bairro: ${DADOS.bairro}
    Log To Console   Cidade: ${DADOS.cidade}
    Log To Console   Estado: ${DADOS.estado}