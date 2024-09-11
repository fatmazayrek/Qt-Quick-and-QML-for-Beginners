import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: rootwindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Working with Animations")

    property bool running: false

    Rectangle {
        id: root
        color: "beige"

        anchors.fill: parent

        Rectangle {
            id: animationRect
            x: 50
            y: 50
            height: 100
            width: 100

            color: "blue"

            // 1.Tanim
            // PropertyAnimation on x {
            //     easing.type: Easing.InSine
            //     to: 500
            //     duration: 2000
            //     running: rootwindow.running
            // }

            // 2.Tanim
            PropertyAnimation {
                target: animationRect
                properties: "x"
                to: 500
                duration: 2000
                running: rootwindow.running
            }

            NumberAnimation on y {
                to: 300
                duration: 2000
                running: rootwindow.running
            }

            RotationAnimation on rotation {
                to: 600
                duration: 2000
                running: rootwindow.running
            }
        }

        MouseArea {
            id: rootRectMouseArea
            anchors.fill: parent

            onPressed: {
                rootwindow.running = true
            }
            onReleased: {
                rootwindow.running = false
            }
        }
    }
}
