import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Focus Scoped")

    MButton {
        id: button1
        buttonColor: "yellow"
        focus: true

        KeyNavigation.down: button2
    }

    MButton {
        id: button2
        anchors.top: button1.bottom
        buttonColor: "beige"

        KeyNavigation.up: button1
    }
}
