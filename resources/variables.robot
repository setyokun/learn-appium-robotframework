*** Variables ***
${REMOTE_URL_LOCAL}        http://localhost:4723
${PLATFORM_NAME_LOCAL}     Android
${DEVICE_NAME_LOCAL}       emulator-5554
${APP_LOCAL}               ${CURDIR}/../app/saucelabs.apk
${AUTOMATION_NAME}         UiAutomator2

${BROWSERSTACK_USERNAME}            %{BROWSERSTACK_USERNAME}
${BROWSERSTACK_ACCESS_KEY}          %{BROWSERSTACK_ACCESS_KEY}
${BROWSERSTACK_URL}                 https://hub-cloud.browserstack.com/wd/hub
${REMOTE_URL_BROWSERSTACK}          http://localhost:4723
${PLATFORM_NAME_BROWSERSTACK}       Android
${DEVICE_NAME_BROWSERSTACK}         Google Pixel 7
${APP_BROWSERSTACK}                 bs://fea9e4ace98aa315e60beda356950e1c4b71d565