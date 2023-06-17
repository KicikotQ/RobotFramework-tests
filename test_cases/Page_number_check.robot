*** Settings *** 
Library   SeleniumLibrary
Resource  ../resources/test_configuration.robot

*** Test Cases ***
Check if page numbers works
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Click on Co u nas and go to page 6