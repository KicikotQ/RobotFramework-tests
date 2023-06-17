*** Settings *** 
Library    SeleniumLibrary

*** Variables ***
${Nokialogo}  (//a[@href="https://nokiawroclaw.pl/careers/news-and-events/"])[1]/text()
${Kimjestesmy}  //a[text()="Kim jesteśmy"]
${POL}  //span[@class="current-lang" and text()="PL"]
${ENG}  //a[@href="https://en.nokiawroclaw.pl/" and @title="EN"]
${whoweareEN}  //a[@href="https://en.nokiawroclaw.pl/news-and-events/" and text()="What is going on"]
${Counas}  //a[@href='https://nokiawroclaw.pl/careers/news-and-events/'][text()='Co u nas']
${page6}  //a[@href='https://nokiawroclaw.pl/careers/news-and-events/page/6/?type=news']




*** Keywords ***
Open Browser go to nokiawroclaw and Maximize Browser Window
    Create WebDriver    Chrome  
    Go To    https://nokiawroclaw.pl/
    Maximize Browser Window
    sleep  1s
Open dropdown menu with languages switch to english site
    Click Element    ${POL}
    Sleep    1s
    Click Element    ${ENG}
    Sleep    1s

Click on Co u nas and go to page 6
    Click Element    ${Counas}
    Sleep   1s
    Click Element    ${page6}
    Sleep   1s
