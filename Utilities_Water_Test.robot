*** Settings ***
Documentation        Essa suíte testa o Cenários Smoke Test da "Smart Retail"
Resource             Utilities_Water_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***
Caso de Teste 001 - Check List Smoke Test                                                                                                                                                                                                                                                                                                                                                                                  
    [Documentation]    Este teste realiza o login com a senha atual e
    ...                verficar a pagina de login do site "GroupLinkNetwork"
    [Tags]             UtilitiesWater                      


    Acessar a home page do site Grouplinknetwork.com/login "STAGING"
    Clicar no "accept cookies policy"
    Verificar se o título da página fica "Group Link - Dashboard"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    Verificar se aparece a frase "GROUP LINK TM"
    Verificar se aparece a frase "Sign in to Group Link"
    Verificar se aparece a frase "Email"
    Verificar se aparece a frase "Password"
    Verificar se aparece a frase "By logging in, you agree to the Terms of Service and our Privacy Policy"
    Verificar se aparece a frase "© 2021 Group Link™. All rights reserved"
    Verificar se aparece a frase "need help?"
    Verificar se aparece a frase "Forgot Password?"
    Verificar se aparece a frase "log in"
    Digitar o "Email" no campo Type your email
    Digitar o "Password" no campo Type your passoword
    Clicar no botão de "log in"
    # Clicar no botão "icon-chevron-down"

