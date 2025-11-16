*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set button changes the counter to a specified value
    Go To    ${HOME_URL}
    Click Button  Nollaa
    Input Text    amount    5
    Click Button    Aseta arvo
    Page Should Contain    nappia painettu 5 kertaa