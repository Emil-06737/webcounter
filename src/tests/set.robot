*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter becomes ten when set to become ten when counter is zero
   Go To  ${HOME_URL}
   Click Button  Nollaa
   Page Should Contain  nappia painettu 0 kertaa
   Input Text  value  10
   Click Button  aseta
   Page Should Contain  nappia painettu 10 kertaa