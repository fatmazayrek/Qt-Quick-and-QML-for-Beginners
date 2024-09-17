import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("SmoothedAnimation")

    Rectangle {
        color: "black"
        focus: true                 // Key navigation kullanmak icin sart

        anchors.fill: parent

        Rectangle {
            id: backRect
            width: 60; height: 60
            radius: 60
            color: "darkred"
            x: frontRect.x - 5
            y:  frontRect.y - 5

            Behavior on x { SmoothedAnimation { velocity: 100} }
            Behavior on y { SmoothedAnimation { velocity: 100} }
        }

        Rectangle {
            id: frontRect
            width: 50; height: 50
            radius: 50
            color: "darksalmon"
            x: parent.width / 2
            y: parent.height / 2
        }

        // key navigation
        Keys.onRightPressed: frontRect.x = frontRect.x + 100
        Keys.onLeftPressed: frontRect.x = frontRect.x - 100
        Keys.onUpPressed: frontRect.y = frontRect.y - 100
        Keys.onDownPressed: frontRect.y = frontRect.y + 100
    }
}
