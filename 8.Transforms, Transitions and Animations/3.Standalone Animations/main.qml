import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: main
    width: 640
    height: 480
    visible: true
    color: "beige"
    title: qsTr("Standalone Animations")

    Rectangle {
        id: redRect
        width: 100
        height: 100
        color: "red"

        NumberAnimation {
            id: numberAnimation
            properties: "x"
            to: 500
            duration: 3000
            target: redRect
        }

        PropertyAnimation {
            id: propertyAnimation
            properties: "scale"
            target: redRect
            to: 40
            duration: 3000
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            numberAnimation.start()
            propertyAnimation.start()
        }
        onReleased: {
            numberAnimation.stop()
            propertyAnimation.stop()
        }
    }
} // main
