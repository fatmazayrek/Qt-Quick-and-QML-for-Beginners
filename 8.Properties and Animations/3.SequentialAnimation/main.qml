import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Sequential Animation")

    Rectangle {
        id: mainRect

        width: 300
        height: 300
        color: "red"
        clip: true
        anchors.centerIn: parent

        Text {
            id: mainText

            text: "Example"
            color: "grey"
            opacity: 0.6
            rotation: -45
            font.pointSize: 70
            anchors.centerIn: parent
        }

        SequentialAnimation {
            id: totalAnimation

            loops: Animation.Infinite
            running: true

            ScaleAnimator {
                id: scaleBigger

                target: mainRect
                from: 0.5
                to: 1
                duration: 1000
            }

            OpacityAnimator {
                id: lessOpac

                target: mainRect
                from: 1
                to: 0.5
                duration: 2000
            }

            ScaleAnimator {
                id: scaleLess

                target: mainRect
                from: 1
                to: 0.5
                duration: 1000
            }

            OpacityAnimator {
                id: moreOpac

                target: mainRect
                from: 0.5
                to: 1
                duration: 1000
            }
        }
    }
}
