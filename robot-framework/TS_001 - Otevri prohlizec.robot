*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing

*** Variables ***
${ProhlizecChrome}  Chrome
${URL}  https://www.google.com

*** Test Cases ***
TC_001 - Otevři browser chrome a jdi na adresu
#    Set Selenium Speed  0.2
#    Open Browser  ${URL}  ${ProhlizecChrome}
#    Sleep  2


    Create Webdriver     Chrome     executable_path=~/downloads/chrome-linux64/chrome
    Close All Browsers 

Post-conditions
    Close Browser
