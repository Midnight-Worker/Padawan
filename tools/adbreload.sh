adb -s emulator-5554 shell am force-stop org.qtproject.example.appPadawan
adb -s emulator-5554 shell monkey -p org.qtproject.example.appPadawan -c android.intent.category.LAUNCHER 1
