import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("KeyBoard Input")

    Rectangle {
        id: backRect

        height: 500
        width: 800
        color: "black"
        focus: true

        Rectangle {
            id: redRect

            height: 100
            width: 100
            color: "red"
            anchors.centerIn: parent
        }

        Rectangle {
            id: yellowLine

            height: 100
            width: 100
            color: "transparent"
            border.color: "yellow"
            border.width: 5
            anchors.centerIn: parent
        }

        Keys.onLeftPressed: redRect.width -= 10
        Keys.onRightPressed: redRect.width += 10
        Keys.onUpPressed: redRect.height += 10
        Keys.onDownPressed: redRect.height -= 10
    }
}
