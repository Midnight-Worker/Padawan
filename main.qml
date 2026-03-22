import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick3D

Window {
    width: 720
    height: 1680
    visible: true

    property url baseUrl: Qt.resolvedUrl(".")

    StackView {
        id: stack
        anchors.fill: parent

        initialItem: Item {
            anchors.fill: parent

            Rectangle {
                anchors.fill: parent
                color: "#202020"
            }

            Button {
                text: "Seite2 laden"
                anchors.centerIn: parent
                onClicked: {
                    stack.push(baseUrl + "Seite2.qml")
                }
            }
        }
    }
}
