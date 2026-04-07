*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://demo.nopcommerce.com/
${USERNAME}  testuser
${PASSWORD}  testpass

*** Test Cases ***
Valid Login Test
    Open Browser    ${URL}    chrome
    Input Text      id=username    ${USERNAME}
    Input Text      id=password    ${PASSWORD}
    Click Button    id=login
    Page Should Contain    Welcome
    Close Browser

Invalid Login Test
    Open Browser    ${URL}    chrome
    Input Text      id=username    ${USERNAME}
    Input Text      id=password    wrongpass
    Click Button    id=login
    Page Should Contain    Invalid username or password
    Close Browser
