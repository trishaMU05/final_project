*** Settings ***
Documentation    This page contains generic Keyword and Variables
Library    SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/
${browser}    Firefox  
*** Keywords ***
Open a browser with url
    Create Webdriver    ${browser}
    Go To    ${url}
    Set Selenium Implicit Wait    10
Close the browser
    Close Browser
