*** Settings ***
Library  SeleniumLibrary




*** Variables ***
${url}  http://127.0.0.1:5000/
${adminname}  admin
${adminpass}  1234
${bookname}  xyz
${author}  abc
${category}  Adventure
${price}  300
${publisher}  def

${updauthor_parameter}  Hello
${updcategory_parameter}  Adventure
${updprice_parameter}  350
${updpublisher_parameter}  World


${username}  utkarsh
${useraddress}  Pune
${useremail}  utkarsh1@gmail.com
${userphone}  9529937422
${userpass}  123

${usersearch}  The Alchemist



*** Test Cases ***
index page test case
    [Documentation]  Index Page
    [Tags]  admin
    Open Browser  ${url}  chrome
    maximize browser window
    sleep  1s
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    Input text  name:name  ${adminname}
    sleep  1s
    Input text  name:pass  ${adminpass}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button

add page test case
    [Documentation]  Add
    [Tags]  admin
    Input text  name:bookname  ${bookname}
    sleep  1s
    Input text  name:author  ${author}
    sleep  1s
    Input text  name:category  ${category}
    sleep  1s
    Input text  name:price  ${price}
    sleep  1s
    Input text  name:publisher  ${publisher}
    sleep  1s
    click element  xpath=/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  3s

search test case
    [Documentation]  search
    [Tags]  admin
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    Input text  name:name  ${bookname}
    sleep  1s
    click button  xpath=/html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

update test case
    [Documentation]  update
    [Tags]  admin
    click element  xpath=/html/body/nav/div/div/ul/li[5]/a
    Input text  name:bookname  ${bookname}
    sleep  1s
    click button  xpath=/html/body/div/div/form/table/tbody/tr[2]/td[2]/button

    Input text  name:bookname  ${bookname}
    sleep  1s
    Input text  name:author  ${updauthor_parameter}
    sleep  1s
    Input text  name:category  ${updcategory_parameter}
    sleep  1s
    Input text  name:price  ${updprice_parameter}
    sleep  1s
    Input text  name:publisher  ${updpublisher_parameter}
    sleep  1s
    click element  xpath=/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  3s

delete test case
    [Documentation]  Delete
    [Tags]  admin
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    Input text  name:bookname  ${bookname}
    sleep  2s
    click button  xpath=/html/body/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

logout test case
    [Documentation]  Logout
    [Tags]  admin
    click element  xpath=/html/body/nav/div/div/ul/li[6]/a
    sleep  2s

user register test case
    [Documentation]  user register
    [Tags]  user
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    sleep  1s
    click element  xpath=/html/body/div/div/div/form/table/tbody/tr[4]/td[2]/button/a
    sleep  1s

    Input text  name:name  ${username}
    sleep  1s
    Input text  name:address  ${useraddress}
    sleep  1s
    Input text  name:email  ${useremail}
    sleep  1s
    Input text  name:mobileno  ${userphone}
    sleep  1s
    Input text  name:pass  ${userpass}
    sleep  1s
    click button  xpath=/html/body/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  2s

user login test case
    [Documentation]  user login
    [Tags]  user
    Input text  name:email  ${useremail}
    sleep  1s
    Input text  name:pass  ${userpass}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  2s

user search test case
    [Documentation]  user search
    [Tags]  user
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    Input text  name:name  ${usersearch}
    sleep  1s
    click button  xpath=/html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

user viewall page test case
    [Documentation]  user viewall
    [Tags]  user
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s

user logout test case
    [Documentation]  user logout
    [Tags]  user
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Close Browser
