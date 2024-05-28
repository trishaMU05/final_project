*** Settings ***
Documentation       Tests to validate Computer dropdowns
Library     SeleniumLibrary
Test Setup      Open the Browser with url
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResource.robot
Resource       ../Resources/computer.robot


*** Test Cases ***
Select the Desktops from computers
    [Tags]    smoke 
    computer.Click the Desktops option


Select the Notebooks from computers
    [Tags]    reggression
    computer.Click the Notebooks option


Select the Accessories from computers
    [Tags]    smoke 
    computer.Click the Accessories option
