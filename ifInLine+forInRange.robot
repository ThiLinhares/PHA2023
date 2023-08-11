*** Settings ***
Library           Collections

*** Test Cases ***
Contador de numeros pares
    ${CONTADOR}=    Contador de numeros pares
    Log To Console   \nExistem ${CONTADOR} números pares entre 0 e 10

*** Keywords ***
Contador de numeros pares
    ${CONTADOR}=    Set Variable    0
    FOR    ${NUMERO}    IN RANGE    11
        ${CONTADOR}=    Evaluate    ${CONTADOR} + (1 if ${NUMERO} % 2 == 0 else 0)
    END
    [Return]    ${CONTADOR}
