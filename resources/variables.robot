*** Variables ***
${REMOTE_URL_LOCAL}        http://localhost:4723
${PLATFORM_NAME_LOCAL}     Android
${DEVICE_NAME_LOCAL}       emulator-5554
${APP_LOCAL}               ${CURDIR}/../app/app-release.apk
${AUTOMATION_NAME}         UiAutomator2

${BROWSERSTACK_USERNAME}            %{BROWSERSTACK_USERNAME}
${BROWSERSTACK_ACCESS_KEY}          %{BROWSERSTACK_ACCESS_KEY}
${BROWSERSTACK_URL}                 https://hub-cloud.browserstack.com/wd/hub
${REMOTE_URL_BROWSERSTACK}          https://%{BROWSERSTACK_USERNAME}:%{BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${PLATFORM_NAME_BROWSERSTACK}       Android
${DEVICE_NAME_BROWSERSTACK}         Google Pixel 7
${APP_BROWSERSTACK}                 %{APP_BROWSERSTACK}