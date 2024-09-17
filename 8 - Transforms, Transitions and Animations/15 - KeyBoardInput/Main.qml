import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keyboard Input")

    Rectangle {
        id: root
        color: "black"
        anchors.fill: parent
        // focus: true

        Rectangle {
            id: redRect
            width: 200; height: 150
            color: "red"
            anchors.centerIn: parent
            // focus: true
        }

        Rectangle {
            id: yellowRect
            width: 200
            height: 150
            color: "transparent"
            border {
                color: "yellow"
                width: 5
            }
            focus: true

            anchors.centerIn: parent
        }

        Keys.onUpPressed: redRect.height += redRect.height * 0.1
        Keys.onDownPressed: redRect.height -= redRect.height * 0.1
        Keys.onRightPressed: redRect.width += redRect.width * 0.1
        Keys.onLeftPressed: redRect.width -= redRect.width * 0.1
    }
}
