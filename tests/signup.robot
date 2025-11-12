*** Settings ***
Resource         ../resources/signup.resource
Test Teardown     Delete Account Logged And Close Browser

*** Test Cases ***
Create New User Account
    Given that I want to create a new user on automationexercise.com
    When I fill in the registration form correctly
    Then the account should be created successfully