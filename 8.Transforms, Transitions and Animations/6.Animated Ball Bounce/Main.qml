import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Animated Ball Bounce")

    property int duration: 3000

    Rectangle {
        id: sky
        height: 200
        width: parent.width

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0080FF" }
            GradientStop { position: 1.0; color: "#66CCFF" }
        }
    }

    Rectangle {
        id: ground
        width: root.width

        anchors.top: sky.bottom
        anchors.bottom: parent.bottom

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#00FF00" }
            GradientStop { position: 1.0; color: "#00803F" }
        }
    }

    Image {
        id: ball
        source: "images/soccer_ball.png"
        height: 50; width: 50
        x: 0; y: root.height - ball.height

        MouseArea {
            anchors.fill: parent

            onClicked: {
                ball.x = 0
                ball.y = root.height - ball.height
                ball.rotation = 0

                anim.restart()
            }
        }
    }

    ParallelAnimation {
        id: anim

        SequentialAnimation {
            NumberAnimation {
                target: ball
                property: "y"
                to: 20
                duration: root.duration * 0.4
                easing.type: Easing.OutCirc
            }

            NumberAnimation {
                target: ball
                property: "y"
                to: root.height - ball.height
                duration: root.duration * 0.6
                easing.type: Easing.OutBounce
            }
        }

        NumberAnimation {
            target: ball
            property: "x"
            to: root.width - ball.width
            duration: root.duration
        }

        RotationAnimation {
            target: ball
            property: "rotation"
            to: 720
            duration: root.duration
        }
    }
}
