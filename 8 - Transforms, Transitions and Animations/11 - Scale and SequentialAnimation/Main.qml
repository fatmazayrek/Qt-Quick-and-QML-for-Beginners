import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Scale and SequentialAnimation")

    Rectangle {
        id: centerRect
        height: 200
        width: 200
        color: "orangered"
        clip: true              // Yazi sigmadigi zaman kullanabilirsin

        anchors.centerIn: parent

        Text {
            id: rectText
            text: Math.round(centerRect.width * centerRect.scale)
            color: "darksalmon"
            font {
                bold: true
                pointSize: 20
            }

            anchors.centerIn: parent
        }
    }

    SequentialAnimation {
        id: anim
        loops: Animation.Infinite
        running: true
        ParallelAnimation {
            PropertyAnimation {
                target: centerRect
                property: "scale"
                to: 2
                duration: 2000
            }
            PropertyAnimation {
                target: rectText
                property: "color"
                to: "cornsilk"
                duration: 2000
            }
        }
        ParallelAnimation {
            PropertyAnimation {
                target: centerRect
                property: "scale"
                to: 0.5
                duration: 2000
            }
            PropertyAnimation {
                target: rectText
                property: "color"
                to: "darksalmon"
                duration: 2000
            }
        }
    }
}
