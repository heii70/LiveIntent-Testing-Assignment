*** Settings ***
Library  BuiltIn
Library  SeleniumLibrary
Library  drivermanager.py
Test Setup  Setup Driver
Test Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}  https://liveintent.com/
${BROWSER}  Chrome
${DRIVERPATH}  ${EXECDIR}${/}venv${/}Scripts${/}chromedriver.exe
${GETSTARTEDPAGE}  https://liveintent.com/free-evaluation/


*** Keywords ***
Setup Driver
    Download ChromeDriver
    Create Webdriver  ${BROWSER}  executable_path=${DRIVERPATH}

*** Test Cases ***
Verify LiveIntent Website
    Go To  ${HOMEPAGE}

    Wait Until Page Contains Element  id=page-content  timeout=10

    Page Should Contain Element  xpath=//*[@id="page-content"]/div/section[1]/div[2]/div[1]/div/div/a[contains(@class, 'home-header-btn') and normalize-space(text()) = 'Get Started']

    Click Element  xpath=//*[@id="page-content"]/div/section[1]/div[2]/div[1]/div/div/a[contains(@class, 'home-header-btn') and normalize-space(text()) = 'Get Started']

    Location Should Be  ${GETSTARTEDPAGE}

    Page Should Contain Element  xpath=//*[@id="chat-btn"]/a[contains(@class, 'header-cta') and normalize-space(text()) = 'Contact Us']

    Sleep  5s
