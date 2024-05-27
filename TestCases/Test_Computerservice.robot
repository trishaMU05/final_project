*** Settings ***
Documentation       Tests to validate Computer service
Library     SeleniumLibrary
Test Setup      Open the Browser
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
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

#Validate for empty search
 #   ComputerService.Click the Search field
 #   ComputerService.Enter the product 
 #   ComputerService.Click Search Button   
 #   ComputerService.Clear text for search
 #   ComputerService.Click search
  #  ComputerService.Error for empty search
Validate for news field
    ComputerService.click the news field
    ComputerService.click details in news
    ComputerService.Fill the title
    ComputerService.Fill the Comment
    ComputerService.Click new comment
Validate the blog field
    ComputerService.Click the blog field


