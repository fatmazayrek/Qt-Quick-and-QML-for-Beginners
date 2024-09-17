import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property and Property Animations")

    Rectangle {
        id: littleRect
        color: "olivedrab"
        width: 400
        height: 100
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent

            onClicked: {
                anim.start()
            }
        }
    }

    PropertyAnimation {
        id: anim
        target: littleRect
        property: "width"
        to: littleRect.width * 0.8
        duration: 500
    }
}
