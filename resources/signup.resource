*** Settings ***
Resource    main.resource

*** Keywords ***
Delete Account Logged And Close Browser
    delete account logged
    Close Browser
that I want to create a new user on automationexercise.com
    the user is on automationexercise site
    Click    xpath=//a[@href="/login"]
    Fill name and email address on signup/login page    ${NAME}    ${EMAIL}

I fill in the registration form correctly
    Fill complete form with valid data
the account should be created successfully
    Get Text    css=h2[data-qa="account-created"]  ==  ACCOUNT CREATED!


Fill name and email address on signup/login page
    [Arguments]    ${name}    ${email}
    Type Text    xpath=//input[@data-qa='signup-name']     ${NAME}
    Type Text    xpath=//input[@data-qa='signup-email']    ${EMAIL}

Fill complete form with valid data
    Click        xpath=//button[@data-qa='signup-button']
    Click        id=id_gender1
    Type Text    id=password    @Test2025
    Select Options By    select[data-qa="days"]      value  10
    Select Options By    select[data-qa="months"]    value  5
    Select Options By    select[data-qa="years"]     value  1990
    Type Text    id=first_name    ${NAME}
    Type Text    id=last_name    Silva
    Type Text    id=address1    Rua Exemplo, 123
    Select Options By    select[data-qa="country"]   value  Canada
    Type Text    id=state    Estado
    Type Text    id=city    Cidade
    Type Text    id=zipcode    12345
    Type Text    id=mobile_number    11999999999
    Click        xpath=//button[@data-qa='create-account']


delete account logged
    Click       xpath=//a[@data-qa="continue-button"]
    Click       xpath=//a[@href="/delete_account"]
    Get Text    css=h2[data-qa="account-deleted"]  ==  ACCOUNT DELETED!