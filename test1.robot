*** Settings *** 
Library    SeleniumLibrary
*** Variables ***
${Nokialogo}  (//a[@href="https://nokiawroclaw.pl/careers/news-and-events/"])[1]/text()
${Kimjestesmy}  //a[text()="Kim jesteśmy"]
${POL}  //span[@class="current-lang" and text()="PL"]
${ENG}  //a[@href="https://en.nokiawroclaw.pl/" and @title="EN"]
${whoweareEN}  //a[@href="https://en.nokiawroclaw.pl/news-and-events/" and text()="What is going on"]





*** Test Cases ***
DUPA
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Click Element    ${POL}
    Sleep    3s
    Click Element    ${ENG}
    Sleep    3s
    Wait Until Page Contains Element  ${whoweareEN}

Check Kim jestesmy button working 
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Click Element    ${Kimjestesmy}

Check Nokialogo button is working
    Open Browser go to nokiawroclaw and Maximize Browser Window
    Click Element    ${Nokialogo}
*** Keywords ***
Open Browser go to nokiawroclaw and Maximize Browser Window
    Create WebDriver    Chrome  
    Go To    https://nokiawroclaw.pl/
    Maximize Browser Window
    Sleep    2s
    