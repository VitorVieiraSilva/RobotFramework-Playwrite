*** Settings ***
Resource    main.resource

*** Keywords ***

click "Signup / Login" button
    Click    xpath=//a[@href="/login"]
enter a valid email address and password

    Type Text    xpath=//input[@data-qa="login-email"]        ${EMAIL}
    Type Text    xpath=//input[@data-qa="login-password"]     @Test2025
    Click        xpath=//button[@data-qa="login-button"]
should see "Logged in as ${NAME}"
    ${text}    Get Text    xpath=//a[contains(text(),"Logged in as")]
    Log    ${text}
    Get Text    xpath=//a[contains(text(),"Logged in as")]    *=    Logged in as ${NAME}

Delete User By API And Close Browser
    Delete User By API
    Close Browser

enter a invalid email address and password
    Type Text    xpath=//input[@data-qa="login-email"]    invaliduser@test.com
    Type Text    xpath=//input[@data-qa="login-password"]    invalidpassword
    Click        xpath=//button[@data-qa="login-button"]

should see an error message "Your email or password is incorrect!"
    Get Text    xpath=//p[@style="color: red;"]   equal    Your email or password is incorrect!


# Abrir site em tela cheia e clicar em "Signup / Login"
#     New Browser    headless=False
#     New Context    viewport={'width':1920, 'height':1080}
#     New Page    https://automationexercise.com

#     # Espera o botão "Signup / Login" aparecer
#     Wait For Elements State    text=Signup / Login    visible

#     # Clica no botão
#     Click    text=Signup / Login

#     # Verifica se a página de login foi carregada
#     Wait For Elements State    css=input[name="email"]    visible

#     # Fecha o navegador
#     Close Browser