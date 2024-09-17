import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioning with X and Y")

    Rectangle {
        id: rootRect

        height: 100
        width: 100
        color: "orange"

        function update() {
            rectText.text = x + "X" + y
        }

        onXChanged: update()
        onYChanged: update()

        Component.onCompleted: update()


        Text {
            id: rectText

            anchors.centerIn: parent
            text: "My Text"
        }

        MouseArea {
            anchors.fill: parent
            drag.target: parent
        }
    }
}
