*** Settings ***
Documentation       Tests to validate Computer dropdowns
Library     SeleniumLibrary
Test Setup      open the browser
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/computer.robot


*** Test Cases ***
Select the Desktops from computers
    computer.Click the Desktops option

Select the Notebooks from computers
    computer.Click the Notebooks option

Select the Accessories from computers
    computer.Click the Accessories option
    