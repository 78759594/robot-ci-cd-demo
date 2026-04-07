*** Settings ***
<<<<<<< HEAD

Library  SeleniumLibrary
 
 
*** Variables ***
 
${browser}  Edge

${url}  https://demo.nopcommerce.com/

${DRIVER_PATH}  C:\\Driver\\edgedriver_win64\\msedgedriver.exe
 
 
*** Test Cases ***

LoginTest

    open browser    ${url}  ${browser}  executable_path=${DRIVER_PATH}

    set selenium speed      1seconds

    RegisterToApplication
 
    close browser
 
 
*** Keywords ***

RegisterToApplication

    click link     xpath://a[text()="Register"]

    #click button    xpath://*[@id="main"]/div/div/div/div[2]/div[1]/div[1]/div[3]/button

    select radio button     Gender      M

    input text      id:FirstName        shrikant

    input text      id:LastName     Navale

    input text      id:Email        shrikantnavale333@gmail.com

    input text      id:Company      TCS

    input text      id:Password     Messi#1998

    input text      id:ConfirmPassword      Messi#1998

    click button    id:register-button
 
=======
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
>>>>>>> fc2893210031fcd61eed3573dc5d7c4bdab2531e
