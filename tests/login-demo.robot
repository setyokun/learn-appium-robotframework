*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Open App and Check Main Screen
    [Documentation]    Buka aplikasi dan cek tampilan awal muncul di Browserstack
    Open Application    ${REMOTE_URL_BROWSERSTACK}
    ...    platformName=${PLATFORM_NAME_BROWSERSTACK}
    ...    deviceName=${DEVICE_NAME_BROWSERSTACK}
    ...    app=${APP_BROWSERSTACK}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=com.example.login_demo
    ...    appActivity=com.example.login_demo.MainActivity
    ...    autoGrantPermissions=true

    Wait Until Page Contains Element    accessibility_id=Login Page    5s

    Click Element    xpath=//android.widget.EditText[@hint='Username']
    Input Text       xpath=//android.widget.EditText[@hint='Username']    admin
    Click Element    xpath=//android.widget.EditText[@hint='Password']
    Input Text       xpath=//android.widget.EditText[@hint='Password']    password
    Click Element    accessibility_id=Login
    Wait Until Element Is Visible    accessibility_id=Login Success    timeout=5s
    Element Should Be Visible        xpath=//android.view.View[@content-desc="Login Success"]

    [Teardown]    Close Application
