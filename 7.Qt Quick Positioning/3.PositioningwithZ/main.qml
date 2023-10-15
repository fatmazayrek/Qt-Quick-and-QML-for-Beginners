import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioning with Z")

    MRectangle {
        id: rect1

        color: "green"
        x: 100
        y: 100
    }

    MRectangle {
        id: rect2

        color: "red"
        x: 200
        y: 300
    }
}
