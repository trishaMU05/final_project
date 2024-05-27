*** Settings ***
Documentation       Tests to validate Computer dropdowns
Library     SeleniumLibrary
Test Setup      Open the Browser with url
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResource.robot
Resource       ../Resources/computer.robot


*** Test Cases ***
Select the Desktops from computers
    computer.Click the Desktops option
Sort by order by for desktop
    computer.Sort item by orderby for desktop
Sort by pagesize for desktop
    computer.Sort item by pagesize for desktop
Sort by viewmode for desktop
    computer.Sort item by viewmode for desktop
Click the product for desktop
    computer.Click a product for desktop

Select the Notebooks from computers
    computer.Click the Notebooks option
Sort by order by for desktop
    computer.Sort item by orderby for Notebooks
Sort by pagesize for desktop
    computer.Sort item by pagesize for Notebooks
Sort by viewmode for desktop
    computer.Sort item by viewmode for Notebooks
Click the product for desktop
    computer.Click a product for Notebooks

Select the Accessories from computers
    computer.Click the Accessories option
Sort by order by for desktop
    computer.Sort item by orderby for Accessories
Sort by pagesize for desktop
    computer.Sort item by pagesize for Accessories
Sort by viewmode for desktop
    computer.Sort item by viewmode for Accessories
Click the product for desktop
    computer.Click a product for Accessories
    