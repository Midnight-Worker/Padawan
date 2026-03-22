import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick3D

Window {
    width: 720
    height: 1680
    visible: true

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            clearColor: "#202020"
            backgroundMode: SceneEnvironment.Color
        }

        PerspectiveCamera {
            id: camera
            position: Qt.vector3d(0, 0, 900)
            clipNear: 1
            clipFar: 5000
        }

        DirectionalLight {
            eulerRotation: Qt.vector3d(-30, -70, 0)
            brightness: 2
        }

        Model {
            id: cube
            source: "#Cube"
            scale: Qt.vector3d(1, 1, 1)
            eulerRotation: Qt.vector3d(20, 30, 0)

            materials: DefaultMaterial {
                diffuseColor: "steelblue"
            }
        }

        Model {
            source: "#Cube"
            x: -150
            scale: Qt.vector3d(0.5, 0.5, 0.5)
            materials: DefaultMaterial { diffuseColor: "red" }
        }

        Model {
            source: "#Cube"
            x: 150
            scale: Qt.vector3d(0.5, 0.5, 0.5)
            materials: DefaultMaterial { diffuseColor: "green" }
        }

        Model {
            source: "#Sphere"
            y: 150
            scale: Qt.vector3d(0.5, 0.5, 0.5)
            materials: DefaultMaterial { diffuseColor: "yellow" }
        }
    }
}
