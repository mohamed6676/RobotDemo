*** Settings ***
Library     SeleniumLibrary

Suite Setup     Log     I'm inside Test Suite Setup
Suite Teardown  Log     I'm inside Test Suite Teardown
Test Setup      Log     I'm inside Test Setup
Test Teardown   Log     I'm inside Test Teardwon

Default Tags    sanity

*** Variables ***
#ScalarVariables
${URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#ListVariables
@{Credentials}  Admin   admin123
#DictionaryVariables
&{LoginData}    username=Admin  password=admin123

*** Test Cases ***
MyFirstTest
    [Tags]  smoke
    Log    Hello World...
MySecondTest
    Log    Hello Second...
MyThirdTest
    Log    Hello Third...

#FirstSeleniumTest
#    Open Browser    https://google.com      chrome
#    Set Browser Implicit Wait    2
#    Input Text    name=q                    Automation Step by Step
#    Press Keys      name=q      ESCAPE
#    Click Button      xpath=//div[4]//center/input[1]
#    Sleep    3
#    Close Browser
#    Log     Test Completed

#SamleLoginTest
#    [Documentation]     This is simple login test
#    Open Browser        ${URL}
#    Set Browser Implicit Wait    3
#    LoginNow
#    Click Element       xpath=//header/div[1]/div[2]//ul/li/span
#    Click Element       link=Logout
#    Sleep    2
#    Close Browser
#    Log                 Test Completed..!
#    #EnvironmentVariables
#    Log    This test was executed by %{username} on %{os}
#


*** Keywords ***
LoginNow
    Input Text          name=username    @{Credentials}[0]
    Input Password      name=password    &{LoginData}[password]
    Click Button        xpath=//div[3]/button
