*** Settings ***
Resource  ../../../Resources/mykeywords.robot

Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***

Google search
    [Documentation]  google search test
    [Tags]  google
    Open Browser  ${url}  chrome
    search data
    submit form
    click element  class:LC20lb

Flipkart product search
    [Documentation]  searching products on flipkart
    [Tags]  flipkart
    sleep  2s
    click button  class:_2KpZ6l
    input text  name:q  iphone13
    click button  class:L0Z3Pu
    sleep  2s
Flipkart product selection
    [Documentation]  selecting product
    [Tags]  flipkart
    click element  xpath= /html/body/div/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  2s


Flipkart product buy
    [Documentation]   product purchase
    [Tags]  fliplart
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    click button  xpath = //html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  10s

Flipkart userloin
    [Documentation]  login
    [Tags]  flipkart
    sleep  5s
    input text  xpath = /html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[1]/input  test@gmail.com
    click button  xpath = //html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button
    stop testcase

*** Keywords ***

