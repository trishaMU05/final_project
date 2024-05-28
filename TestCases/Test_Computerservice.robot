*** Settings ***
Documentation       Tests to validate Computer service
Library     SeleniumLibrary
Test Setup     Open the Browser with url
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResource.robot
Resource       ../Resources/computer.robot
Resource       ../Resources/ComputerService.robot

*** Test Cases ***
Validate Search Field
    ComputerService.Click the Search field
    ComputerService.Enter the product 
    ComputerService.Click Search Button
    ComputerService.Enter product in search keyword
    ComputerService.Select the checkbox options Advance Search
    ComputerService.Fill the details of Advance Search
    ComputerService.Click search 
    ComputerService.List the Computers
Validate for news field
    ComputerService.click the news field
    ComputerService.click details in news
    ComputerService.Fill the title
    ComputerService.Fill the Comment
    ComputerService.Click new comment
Validate the blog field
    ComputerService.Click the blog field
    ComputerService.Blog Title
    ComputerService.Blog Links
Validate recently viewed products
    ComputerService.Validate Recently viewed products
Validate for compare product list
    ComputerService.Validate for comparing product
Validate for new product list
    ComputerService.Validate for new products
Validate for empty search
    ComputerService.Validate for empty search product
Validate for minimum search
    ComputerService.Click the Search field
    ComputerService.Enter the product for minimum 
    ComputerService.Click Search Button
    ComputerService.Assert for minimum search
Validate for the invalid search
    ComputerService.Click the Search field
    ComputerService.Enter the product for invalid 
    ComputerService.Click Search Button
    ComputerService.Assert for invalid search
Validate for log out successfull
    ComputerService.click log out button

