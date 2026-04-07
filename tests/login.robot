*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://example.com/login
${USERNAME}  testuser
${PASSWORD}  testpass

*** Test Cases ***
Login Test
    Open Browser    ${URL}    chrome
    Input Text      id=username    ${USERNAME}
    Input Text      id=password    ${PASSWORD}
    Click Button    id=login
    Page Should Contain    Welcome
    Close Browser
