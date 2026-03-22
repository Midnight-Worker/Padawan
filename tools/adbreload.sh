adb -s emulator-5554 shell am force-stop org.qtproject.example.appAndroidBoiler
adb -s emulator-5554 shell monkey -p org.qtproject.example.appAndroidBoiler -c android.intent.category.LAUNCHER 1
