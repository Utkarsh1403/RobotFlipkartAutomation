*** Settings ***

Library  SeleniumLibrary





*** Variables ***
${url}  http://127.0.0.1:5000/
${username}  utkarsh
${pass}  123
${name}  tom
${mobile}  0987456388
${age}  20
${address}  nagpur
${dob}  2-12-2002
${place}  nagpur
${pincode}  987423

${updname}  ganesh
${updage}  25
${updaddress}  amravati
${upddob}  29-06-1996
${updplace}  amravati
${updpincode}  411016



*** Test Cases ***

Login Page test case
  [Documentation]  login page
  [Tags]  Login
  Open Browser  ${url}  chrome
  maximize browser window
  Input text  name:username  ${username}
  sleep  1s
  input text  name:password  ${pass}
  sleep  1s
  click button  xpath:/html/body/div/div/form/table/tbody/tr[3]/td[2]/button
  sleep  3s

Add Patient test case
  [Documentation]   add
  [Tags]  Patient
  Input text  name:Name  ${name}
  sleep  1s
  input text  name:mobno  ${mobile}
  sleep  1s
  Input text  name:age  ${age}
  sleep  1s
  Input text  name:addr  ${address}
  sleep  1s
  Input text  name:DOB  ${dob}
  sleep  1s
  Input text  name:place  ${place}
  sleep  1s
  Input text  name:pincd  ${pincode}
  sleep  1s
  click button  xpath=/html/body/div/div/form/table/tbody/tr[8]/td[2]/button
  sleep  3s

search test case
    [Documentation]  Search
    [Tags]  Patient

    click element  xpath= /html/body/nav/div/div/ul/li[3]/a
    Input text  name:mobno  ${mobile}
    sleep  2s
    click button  xpath=/html/body/div[1]/div/form/table/tbody/tr[2]/td[2]/button

update test case
  [Documentation]  Update
  [Tags]  Patient

  click element  xpath=/html/body/nav/div/div/ul/li[5]/a
  input text  name:mobno  ${mobile}
  sleep  2s
  click button  xpath=/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button

  input text  name:Name  ${updname}
  sleep  1s
   input text  name:mobno  ${mobile}
  sleep  1s
   input text  name:age  ${updage}
  sleep  1s
   input text  name:addr  ${updaddress}
  sleep  1s
   input text  name:DOB  ${upddob}
  sleep  1s
   input text  name:place  ${updplace}
  sleep  1s
  input text  name:pincd  ${updpincode}
  sleep  1s
  click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
  sleep  3s


delete test case
  [Documentation]  Delete
  [Tags]  Patient

  click element  xpath=/html/body/nav/div/div/ul/li[4]/a
  Input text  name:mobno  ${mobile}
  sleep  2s
  click button  xpath=/html/body/div/div/form/table/tbody/tr[2]/td[2]/button
  sleep  3s
  close browser


*** Keywords ***
