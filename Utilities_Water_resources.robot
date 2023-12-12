*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                                  https://dashboard-s.grouplinknetwork.com/login
${TOPBAR}                               //strong[contains(.,'STAGING')]
${Get Cookies}                          //h5[@class='MuiTypography-root MuiTypography-h5 css-i6vjuv'][contains(.,'accept all cookies')]
${HEADER_RESET}                         //h4[@class='MuiTypography-root MuiTypography-h4 css-19791qk'][contains(.,'Forgot your password?')]
${HEADER_TEXT_RESET}                    Forgot your passoword?
${deviceList_left}                      //div[contains(@class,'vNQ9k')]
${icon-chevron-down}                    //*[@id="chart-3617389174-arrow"]



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Grouplinknetwork.com/login "STAGING"    
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${TOPBAR}

Clicar no "accept cookies policy"   
    Click Element    locator=${Get Cookies} 

Verificar se o título da página fica "${TITULOGROUPLINK}" 
    Title Should Be    title=${TITULOGROUPLINK}

Verificar se aparece a frase "Sign in to Group Link"
    Element Should Be Visible    locator=//h4[contains(.,'Sign in to Group Link')]

Verificar se aparece a frase "GROUP LINK TM"
    Element Should Be Visible    locator=logo

Verificar se aparece a frase "Email"
    Element Should Be Visible    locator=//label[contains(.,'Email')]

Verificar se aparece a frase "Password"
    Element Should Be Visible    locator=//label[contains(.,'Password')]

Verificar se aparece a frase "By logging in, you agree to the Terms of Service and our Privacy Policy"
    Element Should Be Visible    locator=//h6[contains(.,'By logging in, you agree to the Terms of Service and our Privacy Policy')]

Verificar se aparece a frase "© 2021 Group Link™. All rights reserved"
    Element Should Be Visible    locator=//p[contains(.,'© 2021 Group Link™. All rights reserved')]

Verificar se aparece a frase "need help?"
    Element Should Be Visible    locator=//button[contains(.,'need help?')]

Verificar se aparece a frase "Forgot Password?"
    Element Should Be Visible    locator=//button[contains(.,'Forgot Password?')]

Verificar se aparece a frase "log in"
    Element Should Be Visible    locator=//button[contains(.,'log in')]

Digitar o "Email" no campo Type your email
    Input Text    locator=//input[@type='email']    text=qa.water@grouplinknetwork.com    

Digitar o "Password" no campo Type your passoword
    Input Text    locator=//input[@type='password']    text=fzveqtsdkukz

Clicar no botão de "log in"
    Click Element    locator=(//button[@tabindex='0'])[2]

Clicar no "Forgot Password?"
    Click Element    locator=(//button[@type='button'])[3]

Clicar no botão de "send reset passoword link"
    Click Button    locator=(//button[@tabindex='0'])[1]
    Wait Until Element Is Visible    =${deviceList_left}

Clicar no botão "icon-chevron-down"
    Wait Until Keyword Succeeds    10    click Element    id=${icon-chevron-down}



    




        
    