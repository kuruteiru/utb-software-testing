*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  Process

*** Variables ***
${browser}  Chrome
${URL}  https://www.google.com

*** Test Cases ***
TC_001 - Otevři browser chrome a jdi na adresu
    Set Selenium Speed  0.2
    Open Browser  ${URL}  ${browser}
    Sleep  2

#    ${chrome_service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service()    sys
#    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
#    Create Webdriver    Chrome    options=${chrome_options}    service=${chrome_service}

    Close All Browsers
