import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Navigation")

    Rectangle {
        id: topLeftRect

        height: 200; width: 200
        color: focus ? "darkseagreen" : "gray"
        focus: true

        anchors.top: parent.top
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50

        Keys.onDigit2Pressed:
        {
            console.log("Green 2 is pressed")
        }

        KeyNavigation.right: topRightRect
        KeyNavigation.down: bottomLeftRect
    }

    Rectangle {
        id: topRightRect

        height: 200; width: 200
        color: focus ? "red" : "gray"

        anchors.top: parent.top
        anchors.left: topLeftRect.right
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50

        Keys.onDigit2Pressed:
        {
            console.log("Red 2 is pressed")
        }

        KeyNavigation.left: topLeftRect
        KeyNavigation.down: bottomRightRect
    }

    Rectangle {
        id: bottomLeftRect

        height: 200; width: 200
        color: focus ? "yellow" : "gray"

        anchors.top: topLeftRect.bottom
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50

        Keys.onDigit2Pressed:
        {
            console.log("Yellow 2 is pressed")
        }

        KeyNavigation.up: topLeftRect
        KeyNavigation.right: bottomRightRect
    }

    Rectangle {
        id: bottomRightRect

        height: 200; width: 200
        color: focus ? "blue" : "gray"

        anchors.top: topRightRect.bottom
        anchors.left: bottomLeftRect.right
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50

        Keys.onDigit2Pressed:
        {
            console.log("Blue 2 is pressed")
        }

        KeyNavigation.left: bottomLeftRect
        KeyNavigation.up: topRightRect
    }
}
