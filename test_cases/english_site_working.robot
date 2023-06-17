*** Settings *** 
Library   SeleniumLibrary
Resource  ../resources/test_configuration.robot

*** Test Cases ***
Check if english website opens correctly and if it is usable
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Open dropdown menu with languages switch to english site
    Wait Until Page Contains Element  ${whoweareEN}
    
Check Kim jestesmy button working 
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Click Element    ${Kimjestesmy}