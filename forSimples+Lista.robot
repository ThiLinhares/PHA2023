*** Settings ***
Documentation    Exercicio 03 do curso PHA, qual consiste em exbir uma lista de frutas no console.

*** Variables ***
@{FRUTAS}       Banana    Maçã    Laranja    Uva    Melancia     Abacate

*** Test Cases ***
Exibir Frutas da Lista
    Exibir Lista de Frutas    ${FRUTAS}

*** Keywords ***
Exibir Lista de Frutas
    [Arguments]    ${FRUTAS}
    FOR    ${FRUTAS}    IN    @{FRUTAS}
        Log To Console    ${FRUTAS}
    END
