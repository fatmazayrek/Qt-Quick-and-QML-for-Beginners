import QtQuick 2.15

Item {
    id: itemID

    height: center.height * 3
    width: center.width * 3

    Rectangle {
        id: center

        width: 100
        height: 100
        color: "yellow"

        anchors.centerIn: parent
    }

    Rectangle {
        id: top

        width: 100
        height: 100
        color: "red"

        anchors.bottom: center.top
        anchors.left: center.left
    }

    Rectangle {
        id: left

        width: 100
        height: 100
        color: "blue"

        anchors.bottom: center.bottom
        anchors.right: center.left
    }

    Rectangle {
        id: right

        width: 100
        height: 100
        color: "green"

        anchors.bottom: center.bottom
        anchors.left: center.right
    }

    Rectangle {
        id: bottom

        width: 100
        height: 100
        color: "pink"

        anchors.top: center.bottom
        anchors.left: center.left
    }

    MouseArea {
        anchors.fill: parent
        drag.target: itemID.parent
    }
}

