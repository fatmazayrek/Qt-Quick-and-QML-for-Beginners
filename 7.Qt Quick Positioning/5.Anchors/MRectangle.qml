import QtQuick 2.15

Item {
    id: root

    property color rectColor: "gray"
    property string text: "RECT1"

    height: 100
    width: 100

    Rectangle {
        id: rect

        color: root.rectColor
        anchors.fill: parent

        Text {
            text: root.text
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: root.parent
            onPressed: {
                parent.z++
                console.log(parent.z)
            }
        }

    }
}
