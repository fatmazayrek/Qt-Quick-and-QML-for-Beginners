import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Transform and Translate")

    Item {
        id: root
        rotation: 0
        anchors.centerIn: parent

        Rectangle {
            id: yellow
            width: 300
            height: 300
            radius: width
            color: "yellow"
            opacity: 0.5
            border {
                color: "black"
                width: 2
            }
            anchors.centerIn: parent
            transform: Translate {y: 100; x:100}
        }

        Rectangle {
            id: red
            width: 300
            height: 300
            radius: width
            color: "red"
            opacity: 0.5
            border {
                color: "black"
                width: 2
            }
            anchors.centerIn: parent
            transform: Translate {y: 100; x:-100}
        }

        Rectangle {
            id: green
            width: 300
            height: 300
            radius: width
            color: "green"
            opacity: 0.5
            border {
                color: "black"
                width: 2
            }
            anchors.centerIn: parent
            transform: Translate {y: -100; x:100}
        }

        Rectangle {
            id: centerCircle
            width: 50
            height: 50
            radius: width
            color: "white"
            opacity: 1
            border {
                color: "black"
                width: 2
            }
            anchors.centerIn: parent

            Rectangle {
                id: center
                width: 5
                height: 5
                radius: width
                color: "black"
                opacity: 1
                border {
                    color: "black"
                    width: 2
                }
                anchors.centerIn: parent
            }
        }

        RotationAnimator {
            target: root
            from: 360
            to: 0
            duration: 5000
            direction: RotationAnimator.Counterclockwise
            loops: Animation.Infinite
            running: true
        }
    }
}
