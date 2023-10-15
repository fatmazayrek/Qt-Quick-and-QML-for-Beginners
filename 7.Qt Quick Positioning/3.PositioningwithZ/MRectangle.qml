import QtQuick 2.15

Rectangle {
    id: rootRect

    height: 300
    width: 200

    MouseArea {
        anchors.fill: parent
        drag.target: rootRect

        hoverEnabled: true
        onEntered: rootRect.z++
    }
}

