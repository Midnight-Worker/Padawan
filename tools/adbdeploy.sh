alias creator="QT_SCALE_FACTOR=1.5 qtcreator"
alias fire="adb -s FIRE60000000001187"
alias emu="adb -s emulator-5554"
alias r="/home/maik/sandbox/AndroidBoiler/tools/adbreload.sh"
deploy() {
    local src="$1"
    local pkg="org.qtproject.example.appAndroidBoiler"
    local device="${2:-emu}"   # default = emu, optional fire
    local adb_cmd

    # Gerät wählen
    if [ "$device" = "fire" ]; then
        adb_cmd="adb -s FIRE60000000001187"
    else
        adb_cmd="adb -s emulator-5554"
    fi

    if [ -z "$src" ]; then
        echo "Usage: deploy <file.qml> [emu|fire]"
        return 1
    fi

    local name
    name="$(basename "$src")"

    echo "Deploying $name to $device..."

    $adb_cmd push "$src" "/data/local/tmp/$name" || return 1
    $adb_cmd shell "run-as $pkg mkdir -p files" || return 1
    $adb_cmd shell "run-as $pkg cp /data/local/tmp/$name files/$name" || return 1
    $adb_cmd shell "run-as $pkg ls -l files/$name"
}
