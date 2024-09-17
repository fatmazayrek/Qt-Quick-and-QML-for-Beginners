import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("RotationAnimation")

    Rectangle {
        id: centerRect
        height: 200
        width: 200
        color: "indianred"

        anchors.centerIn: parent

        Text {
            id: rectText
            text: Math.round(centerRect.rotation)
            color: "lightgoldenrodyellow"
            font {
                bold: true
                pointSize: 15
            }

            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                centerRect.rotation = centerRect.rotation === 360 ? 0: centerRect.rotation
                if (!anim.running) {
                    anim.start()
                } else if (anim.paused) {
                    anim.resume()
                } else {
                    anim.pause()
                }
            }
        }
    }

    RotationAnimation {
        id: anim
        target: centerRect
        direction: RotationAnimation.Clockwise
        duration: 2000
        from: centerRect.rotation
        to: 360
    }
}
