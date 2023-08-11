*** Settings ***
Documentation    Exercicio 02 do curso PHA, qual consiste em receber uma idade e exbir no console se a pessoa nasceu nesse seculo ou na anterior.
Library    DateTime

*** Variables ***
${IDADE}    25

*** Test Cases ***
Caso de teste exercicio 2  
    Receber idade e exibir mensagem se nasceu no seculo passado    ${IDADE}     

*** Keywords ***
Receber idade e exibir mensagem se nasceu no seculo passado  
    [Arguments]    ${IDADE}  
    Log To Console    \nSua idade é: ${IDADE}
    ${ANO_ATUAL}    Get Current Date    result_format=%Y
    ${ANO_NASCIMENTO}    Evaluate    int(${ANO_ATUAL}) - int(${IDADE})
    IF    ${ANO_NASCIMENTO} < 2000
    ...    Log To Console    \nNasceu no século passado\n
