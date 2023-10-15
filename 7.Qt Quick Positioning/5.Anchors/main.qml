import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchors")

    // :::::1. Yol:::::
    MRectangle {
        id: center
        text: "CENTER RECT"
        rectColor: "gold"

        anchors.centerIn: parent
    }

    MRectangle {
        id: top
        text: "TOP RECT"
        rectColor: "darkmagenta"

        anchors.bottom: center.top
        anchors.horizontalCenter: center.horizontalCenter
    }

    MRectangle {
        id: left
        text: "LEFT RECT"
        rectColor: "indianred"

        anchors.right: center.left
        anchors.bottom: center.bottom
    }

    MRectangle {
        id: right
        text: "RIGHT RECT"
        rectColor: "lightpink"

        anchors.left: center.right
        anchors.bottom: center.bottom
    }

    MRectangle {
        id: bottomRect
        text: "BOTTOM RECT"
        rectColor: "maroon"

        anchors.top: center.bottom
        anchors.left: center.left
    }

    // ::::2. Yol:::
    MItem {
        anchors.centerIn: parent
    }
}
