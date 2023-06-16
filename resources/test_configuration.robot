*** Settings *** 
Library    SeleniumLibrary

*** Variables ***
${Nokialogo}  (//a[@href="https://nokiawroclaw.pl/careers/news-and-events/"])[1]/text()
${Kimjestesmy}  //a[text()="Kim jesteśmy"]
${POL}  //span[@class="current-lang" and text()="PL"]
${ENG}  //a[@href="https://en.nokiawroclaw.pl/" and @title="EN"]
${whoweareEN}  //a[@href="https://en.nokiawroclaw.pl/news-and-events/" and text()="What is going on"]

*** Keywords ***
Open Browser go to nokiawroclaw and Maximize Browser Window
    Create WebDriver    Chrome  
    Go To    https://nokiawroclaw.pl/
    Maximize Browser Window

Open dropdown menu with languages switch to english site
    Click Element    ${POL}
    Sleep    1s
    Click Element    ${ENG}
    Sleep    1s