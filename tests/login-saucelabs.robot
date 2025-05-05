*** Settings ***
Library    AppiumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Open App and Check Main Screen
    [Documentation]    Buka aplikasi dan cek tampilan awal muncul
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    appPackage=com.swaglabsmobileapp
    ...    appActivity=com.swaglabsmobileapp.MainActivity
    ...    autoGrantPermissions=true

    Wait Until Page Contains Element    xpath=//android.widget.TextView[contains(@text, 'usernames')]    10s


    Input Text       accessibility_id=test-Username    standard_user
    Input Text       accessibility_id=test-Password    secret_sauce
    Click Element    accessibility_id=test-LOGIN
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="PRODUCTS"]    timeout=10s
    Element Text Should Be           xpath=//android.widget.TextView[@text="PRODUCTS"]    PRODUCTS



    [Teardown]    Close Application
